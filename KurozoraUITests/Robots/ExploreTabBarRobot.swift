//
//  ExploreTabBarRobot.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 8/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import Foundation

class ExploreTabBarRobot: TabBarRobot {
    @discardableResult
    func assertExploreTabIsSelected(
        file: StaticString = #file,
        line: UInt = #line
    ) -> Self {        
        return assertSelectedTabBarItemIs("Explore", file: file, line: line)
    }
}
