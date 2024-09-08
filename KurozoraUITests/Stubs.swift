//
//  Stubs.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 8/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import Foundation
import SBTUITestTunnelClient

extension SBTStubResponse {
    static func info(isMaintenanceModeEnabled: Bool) -> SBTStubResponse {
        let json = """
        {
          "meta": {
            "version": "1.9.0",
            "minimumAppVersion": "1.12.0",
            "isMaintenanceModeEnabled": \(isMaintenanceModeEnabled),
            "isUserAuthenticated": false,
            "authenticatedUserID": "0"
          }
        }
        """
        return SBTStubResponse(response: json.toJsonDictionary())
    }
}

// an example of a failed generator

fileprivate extension String {
    func toJsonDictionary() -> Any {
        if let jsonData = self.data(using: .utf8) {
            do {
                // Deserialize the JSON data into an Any object (could be a dictionary or array)
                let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
                
                // Check if the jsonObject is a dictionary
                if let jsonDictionary = jsonObject as? [String: Any] {
                    print(jsonDictionary) // Successfully converted to dictionary
                    return jsonDictionary
                } else {
                    fatalError("JSON is not a dictionary")
                }
            } catch {
                fatalError("Error converting JSON string to object: \(error.localizedDescription)")
            }
        } else {
            fatalError("Error converting string to data")
        }
    }
}
