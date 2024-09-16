//
//  Robot+AssertLayout.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 12/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import XCTest
import SnapshotTesting

extension Robot {
    @discardableResult
    func assertLayout(
        under rootElement:  XCUIElement? = nil,
        with reference: String,
        lineLength: Int = 66,
        file: StaticString = #file,
        line: UInt = #line
    ) -> Self {
        // get the subtree of the accessbility hierarchy under the root element or the whole screen if not defined
        let tree = rootElement?.descendants(matching: .any) ?? app.descendants(matching: .any)
        
        // get all buttons
        let buttons = tree.buttons.allElementsBoundByIndex
        
        // get all static texts excluding the ones that belong to the buttons
        let buttonLabels = buttons.map(\.label)
        let staticTexts = tree.staticTexts.allElementsBoundByIndex.filter {
            !buttonLabels.contains($0.label)
        }
        
        // sort them according to how they appear vertically in the screen
        let allElements = (buttons + staticTexts).sorted { el1, el2 in
            el1.frame.origin.y < el2.frame.origin.y
        }
        
        var lines = allElements.compactMap { element -> (String, Line.Alignment)? in
            let text: String? = {
                switch element.elementType {
                case .button:
                    let content = element.label.isEmpty ? "button" : element.label
                    return "[\(content)]"
                case .staticText: return "<\(element.label)>"
                default: return nil
                }
            }()
            guard let text else { return nil }
            let alignment: Line.Alignment = {
                let screenWidth = app.frame.size.width
                let elementWidth = element.frame.size.width
                print(elementWidth / screenWidth)
                if elementWidth / screenWidth > 0.8 { return .center }
                
                print(element.frame.origin.x / screenWidth)
                let isOriginXCloseToTheLeftOfTheScreen = element.frame.origin.x / screenWidth < 0.2
                if isOriginXCloseToTheLeftOfTheScreen { return .left }
                
                let isOriginXCloseToTheRightOfTheScreen = element.frame.origin.x / screenWidth > 0.8
                if isOriginXCloseToTheRightOfTheScreen { return .right }
                
                return .center
            }()
            return (text, alignment)
        }.flatMap {
            Line.make(length: lineLength, alignment: $0.1, text: $0.0)
        }
        
        lines.insert(Line.makeForEdge(length: lineLength), at: 0)
        lines.append(Line.makeForEdge(length: lineLength))
        
        _assertInlineSnapshot(
            matching: lines.text,
            as: .lines,
            with: reference,
            file: file,
            line: line
        )
        
        return self
    }
}

private struct Line {
    enum Alignment {
        case left
        case center
        case right
    }
    
    let text: String
    
    private init(
        text: String
    ) {
        self.text = text
    }
    
    static func make(
        length: Int,
        alignment: Alignment,
        text: String
    ) -> [Self] {
        var lines: [Line] = []
        var string = text
        
        while string.count > 0 {
            let lineText = string.prefix(length)
            let totalPadding = length - lineText.count
            
            var result = "| "
            switch alignment {
            case .left:
                result.append(String(lineText))
                result.append(String(repeating: " ", count: totalPadding))
            case .right:
                result.append(String(repeating: " ", count: totalPadding))
                result.append(String(lineText))
            case .center:
                let leftPadding = totalPadding / 2
                result.append(String(repeating: " ", count: leftPadding))
                result.append(String(lineText))
                let rightPadding = length - lineText.count - leftPadding
                result.append(String(repeating: " ", count: rightPadding))
            }
            result.append(" |")
            
            string.removeFirst(lineText.count)
            lines.append(Line(text: result))
        }
        return lines
    }
    
    static func makeForEdge(
        length: Int
    ) -> Self {
        var result = "|"
        result.append(String(repeating: "-", count: length + 2))
        result.append("|")
        return .init(text: result)
    }
}

private extension [Line] {
    var text: String {
        map(\.text).joined(separator: "\n")
    }
}
