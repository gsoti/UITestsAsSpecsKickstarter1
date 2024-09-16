//
//  WebviewRobot.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 8/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import Foundation

class EmbeddedSafariRobot: Robot {
    @discardableResult
    func assertURLLoaded(
        _url: String,
        file: StaticString = #file,
        line: UInt = #line
    ) -> Self {
        fatalError("not yet implemented", file: file, line: line)
    }
    
    func tapCloseButton(
        file: StaticString = #file,
        line: UInt = #line
    ) -> MaintenanceRobot {
        // SFSafariViewController needs some time to load the content
        // before tap on the button.tap() found inside `tapButton(title:)`
        // actually works. That is why we use a delay of 2 seconds
        // Might be happening cause we get redirected to sing in With Twitter
        // In any case, this view should be controlled in it is to be tested
        // by UI tests
        sleep(3)
        tapButton(title: "Done", file: file, line: line)
        return MaintenanceRobot(app)
    }
}
