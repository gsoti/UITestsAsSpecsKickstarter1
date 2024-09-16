//
//  TabBarRobot.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 8/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import Foundation
import SBTUITestTunnelClient

class TabBarRobot: Robot {
    @discardableResult
    func assertSelectedTabBarItemIs(
        _ title: String,
        file: StaticString,
        line: UInt
    ) -> Self {
        // Find the label using its title
        let tabBarItem = app.tabBars.otherElements[title].firstMatch
        
        // Assert that the tab bar item exists
        XCTAssertTrue(tabBarItem.exists, "The tab bar item '\(title)' does not exist.", file: file, line: line)
        
        // Assert that the tab bar item is selected
        XCTAssertTrue(tabBarItem.isSelected, "The tab bar item '\(title)' is not selected.", file: file, line: line)
        
        return self
    }
    
    func switchToBarBarItem(
        _ title: String,
        file: StaticString,
        line: UInt
    ) {
        // Find the label using its title
        let tabBarItem = app.tabBars.otherElements[title].firstMatch
        
        // Assert that the tab bar item exists
        XCTAssertTrue(tabBarItem.exists, "The tab bar item '\(title)' does not exist.", file: file, line: line)
        
        tabBarItem.tap()
    }
}
