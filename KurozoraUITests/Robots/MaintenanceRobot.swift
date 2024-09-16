//
//  MaintenanceRobot.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 8/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import Foundation

class MaintenanceRobot: Robot {
    // GUIDELINE: Assertion robot actions should always be marked as
    // @discardableResult cause the flow of a UI test might end up in
    // an assertion and might not continue to do any other robot or action
    @discardableResult
    func assertMaintenanceRobotIsLoaded(
        file: StaticString = #file,
        line: UInt = #line
    ) -> Self {        
        assertLabelExists("Scheduled Maintenance", file: file, line: line)
        return self
    }
    
    func tapActionButton(
        title: String,
        file: StaticString = #file,
        line: UInt = #line
    ) -> EmbeddedSafariRobot {
        tapButton(title: title, file: file, line: line)
        return EmbeddedSafariRobot(app)
    }
}
