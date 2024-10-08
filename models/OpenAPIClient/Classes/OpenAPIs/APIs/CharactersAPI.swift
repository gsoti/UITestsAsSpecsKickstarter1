//
// CharactersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CharactersAPI {

    /**
     Get character anime.
     
     - parameter characterID: (path) ID of the character. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getCharactersAnime(characterID: Int, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getCharactersAnimeWithRequestBuilder(characterID: characterID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get character anime.
     - GET /characters/{characterID}/anime
     - This endpoint will retrieve the anime of a specific character.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter characterID: (path) ID of the character. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getCharactersAnimeWithRequestBuilder(characterID: Int, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/characters/{characterID}/anime"
        let characterIDPreEscape = "\(APIHelper.mapValueToPathItem(characterID))"
        let characterIDPostEscape = characterIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{characterID}", with: characterIDPostEscape, options: .literal, range: nil)
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
     * enum for parameter include
     */
    public enum Include_getCharactersDetails: String, CaseIterable {
        case people = "people"
        case shows = "shows"
        case games = "games"
        case literatures = "literatures"
    }

    /**
     Get character details.
     
     - parameter characterID: (path) ID of the character. 
     - parameter include: (query) The relations to include in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getCharactersDetails(characterID: Int, include: [Include_getCharactersDetails]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getCharactersDetailsWithRequestBuilder(characterID: characterID, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get character details.
     - GET /characters/{characterID}
     - This endpoint will retrieve the details of a specific character.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter characterID: (path) ID of the character. 
     - parameter include: (query) The relations to include in the response. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getCharactersDetailsWithRequestBuilder(characterID: Int, include: [Include_getCharactersDetails]? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/characters/{characterID}"
        let characterIDPreEscape = "\(APIHelper.mapValueToPathItem(characterID))"
        let characterIDPostEscape = characterIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{characterID}", with: characterIDPostEscape, options: .literal, range: nil)
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

    /**
     Get character people.
     
     - parameter characterID: (path) ID of the character. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getCharactersPeople(characterID: Int, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getCharactersPeopleWithRequestBuilder(characterID: characterID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get character people.
     - GET /characters/{characterID}/people
     - This endpoint will retrieve the people of a specific character.
     - parameter characterID: (path) ID of the character. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getCharactersPeopleWithRequestBuilder(characterID: Int, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/characters/{characterID}/people"
        let characterIDPreEscape = "\(APIHelper.mapValueToPathItem(characterID))"
        let characterIDPostEscape = characterIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{characterID}", with: characterIDPostEscape, options: .literal, range: nil)
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
}
