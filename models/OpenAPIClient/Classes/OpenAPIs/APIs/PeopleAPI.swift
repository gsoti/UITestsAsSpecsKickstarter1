//
// PeopleAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PeopleAPI {

    /**
     Get person anime.
     
     - parameter personID: (path) ID of the person. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPeopleAnime(personID: Int, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getPeopleAnimeWithRequestBuilder(personID: personID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get person anime.
     - GET /people/{personID}/anime
     - This endpoint will retrieve the anime of a specific person.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter personID: (path) ID of the person. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getPeopleAnimeWithRequestBuilder(personID: Int, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/people/{personID}/anime"
        let personIDPreEscape = "\(APIHelper.mapValueToPathItem(personID))"
        let personIDPostEscape = personIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{personID}", with: personIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Person character information.
     
     - parameter personID: (path) ID of the person. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPeopleCharacters(personID: Int, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getPeopleCharactersWithRequestBuilder(personID: personID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Person character information.
     - GET /people/{personID}/characters
     - This endpoint will retrieve the characters of a Person item.
     - parameter personID: (path) ID of the person. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getPeopleCharactersWithRequestBuilder(personID: Int, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/people/{personID}/characters"
        let personIDPreEscape = "\(APIHelper.mapValueToPathItem(personID))"
        let personIDPostEscape = personIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{personID}", with: personIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     * enum for parameter include
     */
    public enum Include_getPeopleDetails: String, CaseIterable {
        case characters = "characters"
        case shows = "shows"
        case games = "games"
        case literatures = "literatures"
    }

    /**
     Get person details.
     
     - parameter personID: (path) ID of the person. 
     - parameter include: (query) The relations to include in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPeopleDetails(personID: Int, include: [Include_getPeopleDetails]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getPeopleDetailsWithRequestBuilder(personID: personID, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get person details.
     - GET /people/{personID}
     - This endpoint will retrieve the details for a person.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter personID: (path) ID of the person. 
     - parameter include: (query) The relations to include in the response. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getPeopleDetailsWithRequestBuilder(personID: Int, include: [Include_getPeopleDetails]? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/people/{personID}"
        let personIDPreEscape = "\(APIHelper.mapValueToPathItem(personID))"
        let personIDPostEscape = personIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{personID}", with: personIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "include[]": (wrappedValue: include?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
