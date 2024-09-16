//
//  Stubs+Settings.swift
//  KurozoraUITests
//
//  Created by Georgios Sotiropoulos on 12/9/24.
//  Copyright © 2024 Kurozora. All rights reserved.
//

import SBTUITestTunnelClient

fileprivate let path = "v1/explore"

extension SBTStubResponse {
    static func explore() -> SBTStubResponse {
        let body = """
        {
          "meta": {
            "version": "1.9.0",
            "minimumAppVersion": "1.9.0",
            "isMaintenanceModeEnabled": false,
            "isUserAuthenticated": false,
            "authenticatedUserID": "0"
          },
          "data": [
            {
              "id": "1",
              "uuid": "1",
              "type": "explore",
              "href": "/v1/explore/1",
              "attributes": {
                "title": "Featured",
                "description": null,
                "slug": "featured",
                "secondarySlug": null,
                "type": "most-popular-shows",
                "size": "large",
                "position": 1
              },
              "relationships": {
                "shows": {
                  "data": [
                    {
                      "id": "22598",
                      "uuid": "22598",
                      "type": "show",
                      "href": "/v1/anime/22598"
                    },
                    {
                      "id": "25544",
                      "uuid": "25544",
                      "type": "show",
                      "href": "/v1/anime/25544"
                    }
                  ]
                }
              }
            }
          ]
        }
        """
        return SBTStubResponse(body: body)
    }
}

extension StubCommand {
    static func explore() -> StubCommand {
        return .init(
            requestMatch: SBTRequestMatch(url: path),
            response: .explore()
        )
    }
}

extension StubCommand.Error {
    static func explore() -> StubCommand {
        return .init(
            requestMatch: SBTRequestMatch(url: path),
            response: .apiErrorWith(body: "{}", statusCode: 400)
        )
    }
}



