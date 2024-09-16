//
//  SBTUITunneledApplication+Specs.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 11/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import SBTUITestTunnelClient

extension XCTestCase {
    func runTests(
        executables: [Executable],
        shouldAutoLogin: Bool = true,
        shouldSetupUserDefaults: Bool = true,
        file: StaticString = #file,
        line: UInt = #line,
        steps: () -> Void
    ) {
        app.launchTunnel(
            executables: executables,
            shouldAutoLogin: shouldAutoLogin,
            shouldSetupUserDefaults: shouldSetupUserDefaults,
            file: file,
            line: line,
            steps: steps
        )
    }
}

fileprivate extension SBTUITunneledApplication {
    func launchTunnel(
        executables: [Executable],
        shouldAutoLogin: Bool,
        shouldSetupUserDefaults: Bool,
        file: StaticString,
        line: UInt,
        steps: () -> Void
    ) {
        launchTunnel(withOptions: [SBTUITunneledApplicationLaunchOptionResetFilesystem, SBTUITunneledApplicationLaunchOptionDisableUITextFieldAutocomplete]) { [weak self] in
            guard let self else { return }
            
            self.monitorRequests(matching: .init(url: ".*"))
            
            if shouldAutoLogin {
                // set user defaults or keychain so that the user auto logs in
            }
            
            // GUIDELINE: initialise the user defaults in order to avoid things like
            // one time information modals presentation, etc. Anything really that will
            // make the majority of the tests to run more smoothly w/o too many interruptions
            if shouldSetupUserDefaults {
                UserDefaultsCommand.default.execute(with: self)
            }
            
            let finalExecutables: [Executable] = Stubs.default + executables
            for executable in finalExecutables {
                executable.execute(with: self)
            }
        }
        
        steps()
    }
}


// MARK: -- Executables

// Just an abstraction on the ways to setup the UI test
// Setting a network mock, setting user defaults,
// setting the keychain, etc

public protocol Executable {
    func execute(with app: SBTUITunneledApplication)
}
