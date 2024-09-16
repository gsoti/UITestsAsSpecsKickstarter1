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
    convenience init(body: String, returnCode: Int? = nil) {
        self.init(response: body.toJsonDictionary(), returnCode: returnCode)
    }
}

extension SBTStubResponse {
    // GUIDELINE: You should have a quick way to generate an API error model
    // when the API returns a specific error code/type so you can test useful
    // non-happy path scenarios
    static func apiErrorWith(body: String, statusCode: Int) -> SBTStubResponse {
        assert(statusCode >= 400)
        return SBTStubResponse(response: body, returnCode: statusCode)
    }
}

enum Stubs {
    // GUIDELINE: Include here the stubs for all calls that represent the happy path scenarios
    // so that every test is initialised with those and only change the stub behaviour for
    // an endpoint if the scenario itself requires it explicitly
    static var `default`: [StubCommand] {
        return [
            .info(),
            .settings(),
            .explore()
        ]
    }
}

extension StubCommand {
    enum Error {}
}

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
