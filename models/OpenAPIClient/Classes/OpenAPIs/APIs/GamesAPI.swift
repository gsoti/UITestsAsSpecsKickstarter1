//
// GamesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GamesAPI {

    /**
     * enum for parameter include
     */
    public enum Include_getGame: String, CaseIterable {
        case cast = "cast"
        case characters = "characters"
        case relatedShows = "related-shows"
        case relatedGames = "related-games"
        case relatedLiteratures = "related-literatures"
        case songs = "songs"
        case staff = "staff"
        case studios = "studios"
    }

    /**
     (optional authentication) Game details.
     
     - parameter gameID: (path) ID of the game. 
     - parameter include: (query) The relations to include in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGame(gameID: String, include: [Include_getGame]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameWithRequestBuilder(gameID: gameID, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     (optional authentication) Game details.
     - GET /games/{gameID}
     - This endpoint will retrieve the details of an Game item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter gameID: (path) ID of the game. 
     - parameter include: (query) The relations to include in the response. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameWithRequestBuilder(gameID: String, include: [Include_getGame]? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
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
     Game cast information.
     
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGameCast(gameID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameCastWithRequestBuilder(gameID: gameID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Game cast information.
     - GET /games/{gameID}/cast
     - This endpoint will retrieve the casts of an Game item.
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameCastWithRequestBuilder(gameID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}/cast"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
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
     Game character information.
     
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGameCharacters(gameID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameCharactersWithRequestBuilder(gameID: gameID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Game character information.
     - GET /games/{gameID}/characters
     - This endpoint will retrieve the characters of an Game item.
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameCharactersWithRequestBuilder(gameID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}/characters"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
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
     Game related-games information.
     
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGameRelatedGames(gameID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameRelatedGamesWithRequestBuilder(gameID: gameID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Game related-games information.
     - GET /games/{gameID}/related-games
     - This endpoint will retrieve the related-games of an Game item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameRelatedGamesWithRequestBuilder(gameID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}/related-games"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
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
     Game related-literatures information.
     
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGameRelatedLiteratures(gameID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameRelatedLiteraturesWithRequestBuilder(gameID: gameID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Game related-literatures information.
     - GET /games/{gameID}/related-literatures
     - This endpoint will retrieve the related-literatures of an Game item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameRelatedLiteraturesWithRequestBuilder(gameID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}/related-literatures"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
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
     Game related-shows information.
     
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGameRelatedShows(gameID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameRelatedShowsWithRequestBuilder(gameID: gameID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Game related-shows information.
     - GET /games/{gameID}/related-shows
     - This endpoint will retrieve the related-shows of an Game item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameRelatedShowsWithRequestBuilder(gameID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}/related-shows"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
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
     Game staff information.
     
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGameStaff(gameID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameStaffWithRequestBuilder(gameID: gameID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Game staff information.
     - GET /games/{gameID}/staff
     - This endpoint will retrieve the staff of an Game item.
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameStaffWithRequestBuilder(gameID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}/staff"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
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
     Game studio information.
     
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGameStudios(gameID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameStudiosWithRequestBuilder(gameID: gameID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Game studio information.
     - GET /games/{gameID}/studios
     - This endpoint will retrieve the studios of an Game item.
     - parameter gameID: (path) ID of the game. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameStudiosWithRequestBuilder(gameID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}/studios"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
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
     Upcoming game information.
     
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getGameUpcoming(limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getGameUpcomingWithRequestBuilder(limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upcoming game information.
     - GET /games/upcoming
     - This endpoint will retrieve the upcoming Game items.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getGameUpcomingWithRequestBuilder(limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/games/upcoming"
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
     Rate an Game.
     
     - parameter gameID: (path) ID of the game. 
     - parameter rating: (form) The rating to leave. 
     - parameter description: (form) The description accompanying the rating. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postGameRate(gameID: String, rating: Double, description: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return postGameRateWithRequestBuilder(gameID: gameID, rating: rating, description: description).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Rate an Game.
     - POST /games/{gameID}/rate
     - This endpoint will allow user's to leave a rating for an Game.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter gameID: (path) ID of the game. 
     - parameter rating: (form) The rating to leave. 
     - parameter description: (form) The description accompanying the rating. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func postGameRateWithRequestBuilder(gameID: String, rating: Double, description: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/games/{gameID}/rate"
        let gameIDPreEscape = "\(APIHelper.mapValueToPathItem(gameID))"
        let gameIDPostEscape = gameIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gameID}", with: gameIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "rating": rating.encodeToJSON(),
            "description": description?.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/x-www-form-urlencoded",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}