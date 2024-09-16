//
//  Robot+AssertAPISequence.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 16/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import Foundation
import SnapshotTesting
import XCTest

extension Robot {
    @discardableResult
    func assertAPISequence(
        //adHocConfig: AdhocConfigForFlushMonitoredRequests = .init(),
        with reference: String,
        file: StaticString = #file,
        testName: String = #function,
        line: UInt = #line
    ) -> Self {
        guard let app = app as? AppProvidingFlushMonitoredRequestsConfiguration else {
            XCTFail(
                "Αpp does not comfort to AppProvidingFlushMonitoredRequestsConfiguration and Robot.flushMonitoredRequests can't be used"
            )
            return self
        }
        
        // wait for 5 seconds to be sure we record every call that might be inflight
        sleep(5)
        
        let requests = app.monitoredRequestsFlushAll()
        let requestsWithResult: [(path: String, success: Bool)] = requests
            .filter {
                guard let host = $0.request?.url?.host else { return false }
                return app.hostsForRequestsWhichShouldBeMonitored().reduce(false) {
                    $0 || host.contains($1)
                }
            }
            .filter {
                /// we need to use URL.path in order to ignore any query string in the URL.
                guard let path = $0.request?.url?.path else { return false }
                
                return app.ignoreRequestsMatchingPaths().reduce(true) {
                    $0 && !path.hasSuffix($1)
                }
            }
            .compactMap { monitoredRequest in
                guard let req = monitoredRequest.request else { return nil }
                let success: Bool = {
                    guard let res = monitoredRequest.response else { return false }
                    return res.statusCode < 300 && res.statusCode >= 200
                }()
                return (
                    path: req.url!.path,
                    success: success
                )
            }
        
        let unorderedRequests = requestsWithResult.filter { path, _ in
            app.urlsForUnorderedRequests().contains(path)
        }.sorted(by: {
            $0.path > $1.path
        })
        
        let requestsWhichMayNotBePresent = requestsWithResult.filter { path, _ in
            adHocConfig.networkCallsWhichMayNotBePresent.reduce(false) { result, element in
                result || path.contains(element)
            }
        }.sorted(by: {
            $0.path > $1.path
        })
        
        let orderedRequests = requestsWithResult.filter { path, _ in
            !unorderedRequests.map(\.path).contains(path) &&
            !requestsWhichMayNotBePresent.map(\.path).contains(path)
        }
        
        let snapshotTextFromRequests: ([(path: String, success: Bool)]) -> String = { requests in
            requests
                .map { "\($0.path) \($0.success ? "✅" : "❌")" }
                .joined(separator: "\n")
        }
        
        let apiRequests: ([(path: String, success: Bool)]) -> [String] = { requests in
            requests
                .map { "\($0.path) \($0.success ? "✅" : "❌")" }
        }
        
        let reqs: [String] = apiRequests(orderedRequests)
        
        let actionGraph = parseDSL(reference)
        
        let (result, error) = actionGraph.isValidTopologicalSort(reqs)
        
        XCTAssertTrue(
            result,
            error!,
            file: file,
            line: line
        )
        
        return self
    }
    
    
}


// Define the structure for the graph
fileprivate class ActionGraph {
    var adjacencyList: [String: [String]] = [:] // Adjacency list for the graph
    var allNodes: Set<String> = [] // Store all unique actions

    func addEdge(from: String, to: String) {
        if adjacencyList[from] == nil {
            adjacencyList[from] = []
        }
        adjacencyList[from]?.append(to)
        allNodes.insert(from)
        allNodes.insert(to)
    }

    func addNode(_ node: String) {
        allNodes.insert(node)
    }

    func printGraph() {
        for (key, value) in adjacencyList {
            print("\(key) -> \(value)")
        }
//        let connectedNodes = Array(adjacencyList.keys)
//        let orphanNodes = allNodes.subtracting(connectedNodes)
//        for orphanNode in orphanNodes {
//            print(orphanNode)
//        }
    }
    
    func isValidTopologicalSort(_ seq: [String]) -> (Bool, String?) {
        let messageSuffix = "\n\nComparing against the following sequence:\n\n\(seq.joined(separator: "\n"))"
        // sequence should include all nodes
        let nodesNotPresentInSequence = allNodes.subtracting(seq)
        if nodesNotPresentInSequence.count > 0 {
            return (false, "\(nodesNotPresentInSequence) founf in the DSL but not found in the actual sequence snapshot.\(messageSuffix)")
        }
        
        let extraNodesFoundInSequence = Set(seq).subtracting(allNodes)
        if extraNodesFoundInSequence.count > 0 {
            return (false, "\(extraNodesFoundInSequence) found in the actual sequence snapshot but not in the DSL.\(messageSuffix)")
        }
        
        var pos: [String: Int] = [:]

        for (i, v) in seq.enumerated() {
            pos[v] = i
        }
        
        var outOfOrderErrors: [String] = []
        for (vertex, neighbors) in adjacencyList {
            for neighbor in neighbors {
                if pos[neighbor]! < pos[vertex]! {
                    outOfOrderErrors.append("[\(neighbor)] appears before [\(vertex)]")
                }
            }
        }
        if outOfOrderErrors.count > 0 {
            let errorMsg = outOfOrderErrors.enumerated()
//                .map({(i, message} in
//                    "\(i). \(message)\n"
//                })
            return (false, "Actual sequence does not preserve the order of ther DSL\n\(errorMsg)\(messageSuffix)")
        }
        return (true, nil)
    }
}

// Parsing function for the DSL
private func parseDSL(_ dsl: String) -> ActionGraph {
    let actionGraph = ActionGraph()
    let lines = dsl.split(separator: "\n").map { $0.trimmingCharacters(in: .whitespaces) }

    var previousLineActions: [Sequencee] = []

    for line in lines {
        let actions = line.split(separator: ",").map { $0.trimmingCharacters(in: .whitespaces) }
        var currentLineActions: [Sequencee] = []

        for action in actions {
            if action.contains("=>") {
                // Handle the B => C case
                let seq = action.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "")
                let sequenceActions = {
                    if #available(iOS 16.0, *) {
                        let sequenceActions = seq.split(separator: "=>").map { $0.trimmingCharacters(in: .whitespaces) }
                        return sequenceActions
                    } else {
                        // Fallback on earlier versions
                        return []
                    }
                }()
                
                let sequence = Sequencee(actions: sequenceActions)
                
                for (previous, next) in zip(sequence.actions, sequence.actions.dropFirst()) {
                    //print("Previous: \(previous), Next: \(next)")
                    actionGraph.addEdge(from: previous, to: next)
                }
                
                currentLineActions.append(sequence)
                    
//                if sequenceActions.count == 2 {
//                    let first = sequenceActions[0]
//                    let second = sequenceActions[1]
//                    actionGraph.addEdge(from: first, to: second)
//                    currentLineActions.append(first) // Only append the first action to represent the sequence
//                }
            } else {
                // Simple action, just add to current line actions
                let sequence = Sequencee(actions: [action])
                currentLineActions.append(sequence)
                //actionGraph.addNode(action)
            }
        }

        // Add dependencies between previous line and current line actions
        for previous in previousLineActions {
            for current in currentLineActions {
                actionGraph.addEdge(from: previous.last, to: current.first)
            }
        }
        
        print(previousLineActions)
        print(currentLineActions)
        print("------")
        actionGraph.printGraph()
        
        // Current line becomes previous line for next iteration
        previousLineActions = currentLineActions
    }

    return actionGraph
}

struct Sequencee {
    var first: String {
        return actions.first!
    }
    var last: String {
        return actions.last!
    }
    
    var actions: [String]
}
