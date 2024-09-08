//
// MangaAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MangaAPI {

    /**
     * enum for parameter include
     */
    public enum Include_getManga: String, CaseIterable {
        case cast = "cast"
        case characters = "characters"
        case relatedShows = "related-shows"
        case relatedGames = "related-games"
        case relatedLiteratures = "related-literatures"
        case staff = "staff"
        case studios = "studios"
    }

    /**
     (optional authentication) Manga details.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter include: (query) The relations to include in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getManga(mangaID: String, include: [Include_getManga]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaWithRequestBuilder(mangaID: mangaID, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     (optional authentication) Manga details.
     - GET /manga/{mangaID}
     - This endpoint will retrieve the details of an Manga item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter mangaID: (path) ID of the manga. 
     - parameter include: (query) The relations to include in the response. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaWithRequestBuilder(mangaID: String, include: [Include_getManga]? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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
     Manga cast information.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMangaCast(mangaID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaCastWithRequestBuilder(mangaID: mangaID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Manga cast information.
     - GET /manga/{mangaID}/cast
     - This endpoint will retrieve the casts of an Manga item.
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaCastWithRequestBuilder(mangaID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}/cast"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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
     Manga character information.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMangaCharacters(mangaID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaCharactersWithRequestBuilder(mangaID: mangaID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Manga character information.
     - GET /manga/{mangaID}/characters
     - This endpoint will retrieve the characters of an Manga item.
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaCharactersWithRequestBuilder(mangaID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}/characters"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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
     Manga related-games information.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMangaRelatedGames(mangaID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaRelatedGamesWithRequestBuilder(mangaID: mangaID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Manga related-games information.
     - GET /manga/{mangaID}/related-games
     - This endpoint will retrieve the related-games of an Manga item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaRelatedGamesWithRequestBuilder(mangaID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}/related-games"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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
     Manga related-literatures information.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMangaRelatedLiteratures(mangaID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaRelatedLiteraturesWithRequestBuilder(mangaID: mangaID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Manga related-literatures information.
     - GET /manga/{mangaID}/related-literatures
     - This endpoint will retrieve the related-literatures of an Manga item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaRelatedLiteraturesWithRequestBuilder(mangaID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}/related-literatures"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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
     Manga related-shows information.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMangaRelatedShows(mangaID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaRelatedShowsWithRequestBuilder(mangaID: mangaID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Manga related-shows information.
     - GET /manga/{mangaID}/related-shows
     - This endpoint will retrieve the related-shows of an Manga item.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaRelatedShowsWithRequestBuilder(mangaID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}/related-shows"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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
     Manga staff information.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMangaStaff(mangaID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaStaffWithRequestBuilder(mangaID: mangaID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Manga staff information.
     - GET /manga/{mangaID}/staff
     - This endpoint will retrieve the staff of an Manga item.
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaStaffWithRequestBuilder(mangaID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}/staff"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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
     Manga studio information.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMangaStudios(mangaID: String, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaStudiosWithRequestBuilder(mangaID: mangaID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Manga studio information.
     - GET /manga/{mangaID}/studios
     - This endpoint will retrieve the studios of an Manga item.
     - parameter mangaID: (path) ID of the manga. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaStudiosWithRequestBuilder(mangaID: String, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}/studios"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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
     Upcoming manga information.
     
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMangaUpcoming(limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getMangaUpcomingWithRequestBuilder(limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upcoming manga information.
     - GET /manga/upcoming
     - This endpoint will retrieve the upcoming Manga items.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getMangaUpcomingWithRequestBuilder(limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/manga/upcoming"
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
     Rate an Manga.
     
     - parameter mangaID: (path) ID of the manga. 
     - parameter rating: (form) The rating to leave. 
     - parameter description: (form) The description accompanying the rating. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postMangaRate(mangaID: String, rating: Double, description: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return postMangaRateWithRequestBuilder(mangaID: mangaID, rating: rating, description: description).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Rate an Manga.
     - POST /manga/{mangaID}/rate
     - This endpoint will allow user's to leave a rating for an Manga.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter mangaID: (path) ID of the manga. 
     - parameter rating: (form) The rating to leave. 
     - parameter description: (form) The description accompanying the rating. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func postMangaRateWithRequestBuilder(mangaID: String, rating: Double, description: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/manga/{mangaID}/rate"
        let mangaIDPreEscape = "\(APIHelper.mapValueToPathItem(mangaID))"
        let mangaIDPostEscape = mangaIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mangaID}", with: mangaIDPostEscape, options: .literal, range: nil)
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