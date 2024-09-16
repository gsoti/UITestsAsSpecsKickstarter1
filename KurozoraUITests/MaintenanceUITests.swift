//
//  KurozoraUITests.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 7/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import XCTest
import SBTUITestTunnelClient

final class MaintenanceUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMaintenanceModeAppears() throws {
        /*
         v1/info ✅ (isMaintenanceModeEnabled: true)
         */
        runTests(executables: [
            StubCommand.info(isMaintenanceModeEnabled: true)
        ]) {
            MaintenanceRobot(self.app)
                .assertMaintenanceRobotIsLoaded()
                .assertLayout(with: """
                |--------------------------------------------------------------------|
                |                      <Scheduled Maintenance>                       |
                | <Kurozora is currently under maintenance. All services will be ava |
                | ilable shortly. If this continues for more than an hour, you can f |
                |                   ollow the status on Twitter.>                    |
                |                           [Open Twitter]                           |
                |--------------------------------------------------------------------|
                """)
                .tapActionButton(title: "Open Twitter")
                .tapCloseButton()
                // this is flaky!!
                .assertMaintenanceRobotIsLoaded()
                .wait(for: 5)
        }
    }
}
