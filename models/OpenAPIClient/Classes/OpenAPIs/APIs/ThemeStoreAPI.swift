//
// ThemeStoreAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ThemeStoreAPI {

    /**
     Retrieve an overview of theme store items.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getThemeStore(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getThemeStoreWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve an overview of theme store items.
     - GET /theme-store
     - This endpoint will retrieve an overview of theme store items.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getThemeStoreWithRequestBuilder() -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/theme-store"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get specific theme store item details.
     
     - parameter themeID: (path) ID of the theme store item. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getThemeStoreDetails(themeID: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getThemeStoreDetailsWithRequestBuilder(themeID: themeID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get specific theme store item details.
     - GET /theme-store/{themeID}
     - This endpoint will retrieve the details of a specific theme store item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter themeID: (path) ID of the theme store item. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getThemeStoreDetailsWithRequestBuilder(themeID: Int) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/theme-store/{themeID}"
        let themeIDPreEscape = "\(APIHelper.mapValueToPathItem(themeID))"
        let themeIDPostEscape = themeIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{themeID}", with: themeIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
