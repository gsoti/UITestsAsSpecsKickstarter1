//
//  KurozoraUITests.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 7/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import XCTest
import SBTUITestTunnelClient

final class WhatsNewUITests: XCTestCase {
    // GUIDELINE: Document here any link to the spces of the feature, usually a link to the PRD

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWhatsNewIsPresented() throws {
        runTests(
            executables: [],
            shouldSetupUserDefaults: false  // to avoid setting LatestAppVersionPresented by default, thus triggering the whats new version
        ) {
            WhatsNewRobot(self.app)
                .assertWhatsNewIsLoaded()
                .tapActionButton(title: "Continue")
                .assertExploreTabIsSelected()
                .wait(for: 5)   // just for demo purposes to have time to see the last screen in the simulator
        }
    }
    
    func testWhatsNewIsNotPresented() throws {
        runTests(
            executables: []
        ) {
            WhatsNewRobot(self.app)
                .assertWhatsNewIsNotLoaded()
                .assertExploreTabIsSelected()
                .wait(for: 5)
//                .flushMonitoredRequests(with: """
//                /v1/info ✅
//                /v1/settings ✅
//                /v1/explore ✅
//                /v1/anime/22598 ✅
//                /v1/anime/25544 ✅
//                /282337/ba723eab-e371-407b-b8c8-32a290a95141.webp ✅
//                /243867/a4f33c7f-372e-4cb5-8659-7c10181c611a.webp ✅
//                """, delay: 5)
//                .wait(for: 10)
        }
    }
}







