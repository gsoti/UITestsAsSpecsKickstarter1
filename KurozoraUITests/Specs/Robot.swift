//
//  Robot.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 8/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import Foundation
import SBTUITestTunnelClient

fileprivate extension TimeInterval {
    
}

protocol Robotic {
    init(_ app: SBTUITunneledApplication)
}

class Robot: Robotic {
    private static let timeout: TimeInterval = 5.0
    
    let app: SBTUITunneledApplication
    
    required init(_ app: SBTUITunneledApplication) {
        self.app = app
    }
    
    // MARK: - Assertions
    
    @discardableResult
    func assertButtonExists(
        title: String,
        timeout: TimeInterval = timeout,
        file: StaticString,
        line: UInt
    ) -> Self {
        // Find the button using its title
        let exists = app.buttons[title].firstMatch.waitForExistence(timeout: 5)
        
        // Assert that the button exists
        XCTAssertTrue(exists, "The button '\(title)' does not exist.", file: file, line: line)
        
        return self
    }
    
    @discardableResult
    func assertLabelExists(
        _ text: String,
        file: StaticString,
        line: UInt
    ) -> Self {
        // Find the label using its title
        let exists = app.staticTexts[text].firstMatch.waitForExistence(timeout: 5)
        
        // Assert that the label exists
        XCTAssertTrue(exists, "The label '\(text)' does not exist.", file: file, line: line)
        
        return self
    }
    
    @discardableResult
    func assertLabelDoesNotExist(
        _ text: String,
        file: StaticString,
        line: UInt
    ) -> Self {
        // Find the label using its title
        let exists = app.staticTexts[text].firstMatch.waitForExistence(timeout: 5)
        
        // Assert that the label exists
        XCTAssertFalse(exists, "The label '\(text)' exists when it shouldn't.", file: file, line: line)
        
        return self
    }
    
    // MARK: -- Tap buttons
        
    @discardableResult
    func tapButton(
        title: String,
        file: StaticString,
        line: UInt
    ) -> Self {
        // Find the button using its title
        let button = app.buttons[title].firstMatch
                        
        // Assert that the button exists
        XCTAssertTrue(button.waitForExistence(timeout: 5), "The button '\(title)' does not exist.", file: file, line: line)
        
        // Assert that the button is hittable
        XCTAssertTrue(button.isHittable, "The button '\(title)' is not hittable.", file: file, line: line)
        
        button.tap()
        
        return self
    }
    
    // MARK: -- Background / Foreground / Terminate
    
    func bringAppToBackground() -> Self {
        XCUIDevice.shared.press(XCUIDevice.Button.home)
        return self
    }
    
    func bringAppToForeground() -> Self {
        app.activate()
        return self
    }
    
    @discardableResult
    func terminateApp() -> Self {
        app.terminate()
        return self
    }
    
    // MARK: -- Other
    
    func back<R: Robotic>(
        to type: R.Type,
        file: StaticString = #file,
        line: UInt = #line
    ) -> R {
        let backButton = app.navigationBars.firstMatch.buttons.firstMatch
        
        // Assert that the back button exists
        XCTAssertTrue(backButton.exists, "The back button does not exist.", file: file, line: line)
        
        // Assert that the button is hittable
        XCTAssertTrue(backButton.isHittable, "The back button is not hittable.", file: file, line: line)
        
        backButton.tap()
        
        return R(app)
    }
    
    func `switch`<R: Robotic>(
        to type: R.Type,
        file: StaticString = #file,
        line: UInt = #line
    ) -> R {
        return R(app)
    }
    
    @discardableResult
    func wait(for delay: UInt32) -> Self {
        sleep(delay)
        return self
    }
    
    // GUIDELINE: To be used to change network responses, user defaults, etc
    // as part of a test.
    // Example:
    // 1. Press a button, API calls fails
    // 2. Assert the error message/view
    // 3. Replace the mock using this method with a successful response
    // 4. Press the button again
    // 5. Assert on the happy path now
    func execute(executables: Executable...) -> Self {
        for executable in executables {
            executable.execute(with: app)
        }
        return self
    }
}
