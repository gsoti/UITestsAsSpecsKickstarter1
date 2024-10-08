//
// FeedAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FeedAPI {

    /**
     (optional authentication) Explore feed posts.
     
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getFeedExplore(limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getFeedExploreWithRequestBuilder(limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     (optional authentication) Explore feed posts.
     - GET /feed/explore
     - This endpoint will retrieve the an unpersonalised feed.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getFeedExploreWithRequestBuilder(limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/feed/explore"
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
     Get the user's personal feed
     
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getFeedHome(limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getFeedHomeWithRequestBuilder(limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the user's personal feed
     - GET /feed/home
     - This endpoint will retrieve the authenticated user's personal feed.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getFeedHomeWithRequestBuilder(limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/feed/home"
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
     Get the feed message's details
     
     - parameter messageID: (path) ID of the message. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getFeedMessagesDetails(messageID: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getFeedMessagesDetailsWithRequestBuilder(messageID: messageID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the feed message's details
     - GET /feed/messages/{messageID}
     - This endpoint will retrieve a feed message's details.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter messageID: (path) ID of the message. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getFeedMessagesDetailsWithRequestBuilder(messageID: Int) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/feed/messages/{messageID}"
        let messageIDPreEscape = "\(APIHelper.mapValueToPathItem(messageID))"
        let messageIDPostEscape = messageIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{messageID}", with: messageIDPostEscape, options: .literal, range: nil)
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
     Get the feed message's replies
     
     - parameter messageID: (path) ID of the message. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getFeedMessagesReplies(messageID: Int, limit: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getFeedMessagesRepliesWithRequestBuilder(messageID: messageID, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the feed message's replies
     - GET /feed/messages/{messageID}/replies
     - This endpoint will retrieve a feed message's replies.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter messageID: (path) ID of the message. 
     - parameter limit: (query) The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
     - parameter page: (query) The next page or group of objects to fetch. The default value is 1. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getFeedMessagesRepliesWithRequestBuilder(messageID: Int, limit: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/feed/messages/{messageID}/replies"
        let messageIDPreEscape = "\(APIHelper.mapValueToPathItem(messageID))"
        let messageIDPostEscape = messageIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{messageID}", with: messageIDPostEscape, options: .literal, range: nil)
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
     Creates a new message on the feed.
     
     - parameter body: (form) Text in the feed message. 
     - parameter isNsfw: (form)  
     - parameter isSpoiler: (form)  
     - parameter parentId: (form) ID of the feed message the user is replying to. Omit if not a reply. (optional)
     - parameter isReply: (form)  (optional)
     - parameter isReshare: (form)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postFeed(body: String, isNsfw: NSFWStatus, isSpoiler: SpoilerStatus, parentId: Int? = nil, isReply: ReplyStatus? = nil, isReshare: ReShareStatus? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return postFeedWithRequestBuilder(body: body, isNsfw: isNsfw, isSpoiler: isSpoiler, parentId: parentId, isReply: isReply, isReshare: isReshare).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Creates a new message on the feed.
     - POST /feed
     - This endpoint will create a new message on the feed.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (form) Text in the feed message. 
     - parameter isNsfw: (form)  
     - parameter isSpoiler: (form)  
     - parameter parentId: (form) ID of the feed message the user is replying to. Omit if not a reply. (optional)
     - parameter isReply: (form)  (optional)
     - parameter isReshare: (form)  (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func postFeedWithRequestBuilder(body: String, isNsfw: NSFWStatus, isSpoiler: SpoilerStatus, parentId: Int? = nil, isReply: ReplyStatus? = nil, isReshare: ReShareStatus? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/feed"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "body": body.encodeToJSON(),
            "parent_id": parentId?.encodeToJSON(),
            "is_reply": isReply?.encodeToJSON(),
            "is_reshare": isReshare?.encodeToJSON(),
            "is_nsfw": isNsfw.encodeToJSON(),
            "is_spoiler": isSpoiler.encodeToJSON(),
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

    /**
     Delete a feed message
     
     - parameter messageID: (path) ID of the message. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postFeedMessagesDelete(messageID: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return postFeedMessagesDeleteWithRequestBuilder(messageID: messageID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a feed message
     - POST /feed/messages/{messageID}/delete
     - This endpoint will delete a feed message.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter messageID: (path) ID of the message. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func postFeedMessagesDeleteWithRequestBuilder(messageID: Int) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/feed/messages/{messageID}/delete"
        let messageIDPreEscape = "\(APIHelper.mapValueToPathItem(messageID))"
        let messageIDPostEscape = messageIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{messageID}", with: messageIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Heart or un-heart a feed message.
     
     - parameter messageID: (path) ID of the message. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postFeedMessagesHeart(messageID: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return postFeedMessagesHeartWithRequestBuilder(messageID: messageID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Heart or un-heart a feed message.
     - POST /feed/messages/{messageID}/heart
     - This endpoint will heart or un-heart a feed message.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter messageID: (path) ID of the message. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func postFeedMessagesHeartWithRequestBuilder(messageID: Int) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/feed/messages/{messageID}/heart"
        let messageIDPreEscape = "\(APIHelper.mapValueToPathItem(messageID))"
        let messageIDPostEscape = messageIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{messageID}", with: messageIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update the feed message's details
     
     - parameter messageID: (path) ID of the message. 
     - parameter body: (form) Text in the feed message. 
     - parameter isNsfw: (form)  
     - parameter isSpoiler: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postFeedMessagesUpdate(messageID: Int, body: String, isNsfw: NSFWStatus, isSpoiler: SpoilerStatus, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return postFeedMessagesUpdateWithRequestBuilder(messageID: messageID, body: body, isNsfw: isNsfw, isSpoiler: isSpoiler).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update the feed message's details
     - POST /feed/messages/{messageID}/update
     - This endpoint will update a feed message's details.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter messageID: (path) ID of the message. 
     - parameter body: (form) Text in the feed message. 
     - parameter isNsfw: (form)  
     - parameter isSpoiler: (form)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func postFeedMessagesUpdateWithRequestBuilder(messageID: Int, body: String, isNsfw: NSFWStatus, isSpoiler: SpoilerStatus) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/feed/messages/{messageID}/update"
        let messageIDPreEscape = "\(APIHelper.mapValueToPathItem(messageID))"
        let messageIDPostEscape = messageIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{messageID}", with: messageIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "body": body.encodeToJSON(),
            "is_nsfw": isNsfw.encodeToJSON(),
            "is_spoiler": isSpoiler.encodeToJSON(),
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
