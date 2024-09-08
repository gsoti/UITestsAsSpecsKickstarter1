//
// ExploreAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ExploreAPI {

    /**
     (optional authentication) Explore page.
     
     - parameter genreId: (query) ID of the genre to filter on. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getExplore(genreId: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getExploreWithRequestBuilder(genreId: genreId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     (optional authentication) Explore page.
     - GET /explore
     - This endpoint will retrieve the explore page.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter genreId: (query) ID of the genre to filter on. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getExploreWithRequestBuilder(genreId: Int? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/explore"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "genre_id": (wrappedValue: genreId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     (optional authentication) Explore category details.
     
     - parameter exploreCategoryID: (path) ID of the explore category. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getExploreDetails(exploreCategoryID: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getExploreDetailsWithRequestBuilder(exploreCategoryID: exploreCategoryID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     (optional authentication) Explore category details.
     - GET /explore/{exploreCategoryID}
     - This endpoint will retrieve the details to for the explore category.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter exploreCategoryID: (path) ID of the explore category. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getExploreDetailsWithRequestBuilder(exploreCategoryID: Int) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/explore/{exploreCategoryID}"
        let exploreCategoryIDPreEscape = "\(APIHelper.mapValueToPathItem(exploreCategoryID))"
        let exploreCategoryIDPostEscape = exploreCategoryIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{exploreCategoryID}", with: exploreCategoryIDPostEscape, options: .literal, range: nil)
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
