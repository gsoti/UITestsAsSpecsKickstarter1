//
//  UserDefaultsCommand.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 11/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import SBTUITestTunnelClient

struct UserDefaultsCommand: Executable {
    let defaults: [String: NSCoding & NSObjectProtocol]
    
    func execute(with app: SBTUITunneledApplication) {
        for (key, value) in defaults {
            app.userDefaultsSetObject(value, forKey: key)
        }
    }
}

extension UserDefaultsCommand {
    static var `default`: UserDefaultsCommand {
        return .init(defaults: [
                "LatestAppVersionPresented": "1.9.0"  as NSCoding & NSObjectProtocol   // in order to avoid WhatsNew being presented every time
            ])
    }
}
