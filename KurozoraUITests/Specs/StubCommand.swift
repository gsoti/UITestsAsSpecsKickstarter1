//
//  StubCommand.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 11/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import SBTUITestTunnelClient

struct StubCommand {
    let requestMatch: SBTRequestMatch
    let response: SBTStubResponse
}

extension StubCommand: Executable {
    func execute(with app: SBTUITunneledApplication) {
        app.stubRequests(matching: requestMatch, response: response)
    }
}
