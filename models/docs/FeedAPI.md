# FeedAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFeedExplore**](FeedAPI.md#getfeedexplore) | **GET** /feed/explore | (optional authentication) Explore feed posts.
[**getFeedHome**](FeedAPI.md#getfeedhome) | **GET** /feed/home | Get the user&#39;s personal feed
[**getFeedMessagesDetails**](FeedAPI.md#getfeedmessagesdetails) | **GET** /feed/messages/{messageID} | Get the feed message&#39;s details
[**getFeedMessagesReplies**](FeedAPI.md#getfeedmessagesreplies) | **GET** /feed/messages/{messageID}/replies | Get the feed message&#39;s replies
[**postFeed**](FeedAPI.md#postfeed) | **POST** /feed | Creates a new message on the feed.
[**postFeedMessagesDelete**](FeedAPI.md#postfeedmessagesdelete) | **POST** /feed/messages/{messageID}/delete | Delete a feed message
[**postFeedMessagesHeart**](FeedAPI.md#postfeedmessagesheart) | **POST** /feed/messages/{messageID}/heart | Heart or un-heart a feed message.
[**postFeedMessagesUpdate**](FeedAPI.md#postfeedmessagesupdate) | **POST** /feed/messages/{messageID}/update | Update the feed message&#39;s details


# **getFeedExplore**
```swift
    open class func getFeedExplore(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(optional authentication) Explore feed posts.

This endpoint will retrieve the an unpersonalised feed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// (optional authentication) Explore feed posts.
FeedAPI.getFeedExplore(limit: limit, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedHome**
```swift
    open class func getFeedHome(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get the user's personal feed

This endpoint will retrieve the authenticated user's personal feed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get the user's personal feed
FeedAPI.getFeedHome(limit: limit, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedMessagesDetails**
```swift
    open class func getFeedMessagesDetails(messageID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get the feed message's details

This endpoint will retrieve a feed message's details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageID = 987 // Int | ID of the message.

// Get the feed message's details
FeedAPI.getFeedMessagesDetails(messageID: messageID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageID** | **Int** | ID of the message. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedMessagesReplies**
```swift
    open class func getFeedMessagesReplies(messageID: Int, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get the feed message's replies

This endpoint will retrieve a feed message's replies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageID = 987 // Int | ID of the message.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get the feed message's replies
FeedAPI.getFeedMessagesReplies(messageID: messageID, limit: limit, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageID** | **Int** | ID of the message. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postFeed**
```swift
    open class func postFeed(body: String, isNsfw: NSFWStatus, isSpoiler: SpoilerStatus, parentId: Int? = nil, isReply: ReplyStatus? = nil, isReshare: ReShareStatus? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Creates a new message on the feed.

This endpoint will create a new message on the feed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | Text in the feed message.
let isNsfw = NSFWStatus() // NSFWStatus | 
let isSpoiler = SpoilerStatus() // SpoilerStatus | 
let parentId = 987 // Int | ID of the feed message the user is replying to. Omit if not a reply. (optional)
let isReply = ReplyStatus() // ReplyStatus |  (optional)
let isReshare = Re-shareStatus() // ReShareStatus |  (optional)

// Creates a new message on the feed.
FeedAPI.postFeed(body: body, isNsfw: isNsfw, isSpoiler: isSpoiler, parentId: parentId, isReply: isReply, isReshare: isReshare) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | Text in the feed message. | 
 **isNsfw** | [**NSFWStatus**](NSFWStatus.md) |  | 
 **isSpoiler** | [**SpoilerStatus**](SpoilerStatus.md) |  | 
 **parentId** | **Int** | ID of the feed message the user is replying to. Omit if not a reply. | [optional] 
 **isReply** | [**ReplyStatus**](ReplyStatus.md) |  | [optional] 
 **isReshare** | [**ReShareStatus**](ReShareStatus.md) |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postFeedMessagesDelete**
```swift
    open class func postFeedMessagesDelete(messageID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete a feed message

This endpoint will delete a feed message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageID = 987 // Int | ID of the message.

// Delete a feed message
FeedAPI.postFeedMessagesDelete(messageID: messageID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageID** | **Int** | ID of the message. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postFeedMessagesHeart**
```swift
    open class func postFeedMessagesHeart(messageID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Heart or un-heart a feed message.

This endpoint will heart or un-heart a feed message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageID = 987 // Int | ID of the message.

// Heart or un-heart a feed message.
FeedAPI.postFeedMessagesHeart(messageID: messageID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageID** | **Int** | ID of the message. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postFeedMessagesUpdate**
```swift
    open class func postFeedMessagesUpdate(messageID: Int, body: String, isNsfw: NSFWStatus, isSpoiler: SpoilerStatus, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update the feed message's details

This endpoint will update a feed message's details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageID = 987 // Int | ID of the message.
let body = "body_example" // String | Text in the feed message.
let isNsfw = NSFWStatus() // NSFWStatus | 
let isSpoiler = SpoilerStatus() // SpoilerStatus | 

// Update the feed message's details
FeedAPI.postFeedMessagesUpdate(messageID: messageID, body: body, isNsfw: isNsfw, isSpoiler: isSpoiler) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageID** | **Int** | ID of the message. | 
 **body** | **String** | Text in the feed message. | 
 **isNsfw** | [**NSFWStatus**](NSFWStatus.md) |  | 
 **isSpoiler** | [**SpoilerStatus**](SpoilerStatus.md) |  | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

