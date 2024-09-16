//
//  Stubs+Settings.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 12/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import SBTUITestTunnelClient

fileprivate let path = "v1/settings"

extension SBTStubResponse {
    static func settings() -> SBTStubResponse {
        let body = """
        {
          "meta": {
              "version": "1.9.0",
              "minimumAppVersion": "1.9.0",
              "isMaintenanceModeEnabled": false,
              "isUserAuthenticated": false,
              "authenticatedUserID": "0"
            },
            "data": {
              "appleMusicDeveloperToken": "eyJraWQiOiIzOExGSjhTNkJLIiwiYWxnIjoiRVMyNTYifQ.eyJpc3MiOiI0N1pFVTVKNEJGIiwiaWF0IjoxNzIwNDcwODMzLCJleHAiOjE3MzYwMjI4MzMsImF1ZCI6Imh0dHBzOi8vYXBwbGVpZC5hcHBsZS5jb20iLCJzdWIiOiJhcHAua3Vyb3pvcmEud2ViLnRyYWNrZXIifQ.DiDj_7N2moDCfVG_yyZ1NT39vg3qqfJqKYVJj7L4xhkBo847gvG-RoUD4HsEobZ2DUmB4nX5NLW0H0khs-c4XA",
              "youtubeAPIKey": "AIzaSyAmpowPh9nqaD3Y1LSAozN4gkByZXLJLCQ"
            }
        }
        """
        return SBTStubResponse(body: body)
    }
}

extension StubCommand {
    static func settings() -> StubCommand {
        return .init(
            requestMatch: SBTRequestMatch(url: path),
            response: .settings()
        )
    }
}

extension StubCommand.Error {
    static func settings() -> StubCommand {
        return .init(
            requestMatch: SBTRequestMatch(url: path),
            response: .apiErrorWith(body: "{}", statusCode: 400)
        )
    }
}

