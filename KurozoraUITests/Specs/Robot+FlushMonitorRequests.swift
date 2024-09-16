//
//  Robot+FlushMonitorRequests.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 12/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import SBTUITestTunnelClient
import SnapshotTesting

extension Robot {
    @discardableResult
    func flushMonitoredRequests(
        with reference: String,
        config: FlushflushMonitoredRequestsConfig = .allowAll,
        record recording: Bool = false,
        delay: UInt32 = 2,
        file: StaticString = #file,
        testName: String = #function,
        line: UInt = #line
    ) -> Self {
        // most of the time we need to wait for some seconds to make sure all HTTP calls have been made
        sleep(delay)
        
        let requests = app.monitoredRequestsFlushAll()
        let result: [(path: String, success: Bool)] = requests.filter {
            // allow every request if monitored hosts have not been defined
            guard let includedHosts = config.includedHosts else { return true }
            
            guard let host = $0.request?.url?.host else { return false }
            // it should be included in the included hosts
            return includedHosts.contains(host)
        }.filter {
            guard let path = $0.request?.url?.path else { return false }
            // it should not be included in the excluded paths
            return config.excludedPaths.contains(path) == false
        }.compactMap { monitoredRequest in
            guard let urlRequest = monitoredRequest.request else { return nil }
            let success: Bool = {
                guard let res = monitoredRequest.response else { return false }
                return res.statusCode < 400 && res.statusCode >= 200
            }()
            return (
                path: urlRequest.url!.path,
                success: success
            )
        }
        
        let snapshot = result
            .map { "\($0.path) \($0.success ? "✅" : "❌")" }
            .joined(separator: "\n")
        
        _assertInlineSnapshot(
            matching: snapshot,
            as: .lines,
            record: recording,
            with: reference,
            file: file,
            line: line
        )
        
        return self
    }
}

enum MonitoredHosts {
    case included(Set<String>)
    case excluded(Set<String>)
}

// Simplified config with basic rules
// One could augment the rules capabilities by supporting
// apart from equality, has_suffix, hasPrefix and regex rules
struct FlushflushMonitoredRequestsConfig {
    let includedHosts: Set<String>?     // nil allows all hosts to be flushed
    let excludedPaths: Set<String>
    
    static var allowAll: Self = .init(
        includedHosts: nil,
        excludedPaths: []
    )
}
