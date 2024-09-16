//
//  WhatsNewRobot.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 8/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import Foundation

class WhatsNewRobot: Robot {
    static let titleText = "What’s New in Kurozora"
    
    @discardableResult
    func assertWhatsNewIsLoaded(
        file: StaticString = #file,
        line: UInt = #line
    ) -> Self {
        assertLabelExists(Self.titleText, file: file, line: line)
        return self
    }
    
    func assertWhatsNewIsNotLoaded(
        file: StaticString = #file,
        line: UInt = #line
    ) -> ExploreTabBarRobot {
        assertLabelDoesNotExist(Self.titleText, file: file, line: line)
        return ExploreTabBarRobot(app)
    }
    
    func tapActionButton(
        title: String,
        file: StaticString = #file,
        line: UInt = #line
    ) -> ExploreTabBarRobot {
        tapButton(title: title, file: file, line: line)
        return ExploreTabBarRobot(app)
    }
}
