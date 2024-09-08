# GamesAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGame**](GamesAPI.md#getgame) | **GET** /games/{gameID} | (optional authentication) Game details.
[**getGameCast**](GamesAPI.md#getgamecast) | **GET** /games/{gameID}/cast | Game cast information.
[**getGameCharacters**](GamesAPI.md#getgamecharacters) | **GET** /games/{gameID}/characters | Game character information.
[**getGameRelatedGames**](GamesAPI.md#getgamerelatedgames) | **GET** /games/{gameID}/related-games | Game related-games information.
[**getGameRelatedLiteratures**](GamesAPI.md#getgamerelatedliteratures) | **GET** /games/{gameID}/related-literatures | Game related-literatures information.
[**getGameRelatedShows**](GamesAPI.md#getgamerelatedshows) | **GET** /games/{gameID}/related-shows | Game related-shows information.
[**getGameStaff**](GamesAPI.md#getgamestaff) | **GET** /games/{gameID}/staff | Game staff information.
[**getGameStudios**](GamesAPI.md#getgamestudios) | **GET** /games/{gameID}/studios | Game studio information.
[**getGameUpcoming**](GamesAPI.md#getgameupcoming) | **GET** /games/upcoming | Upcoming game information.
[**postGameRate**](GamesAPI.md#postgamerate) | **POST** /games/{gameID}/rate | Rate an Game.


# **getGame**
```swift
    open class func getGame(gameID: String, include: [Include_getGame]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(optional authentication) Game details.

This endpoint will retrieve the details of an Game item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let include = ["include_example"] // [String] | The relations to include in the response. (optional)

// (optional authentication) Game details.
GamesAPI.getGame(gameID: gameID, include: include) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
 **include** | [**[String]**](String.md) | The relations to include in the response. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameCast**
```swift
    open class func getGameCast(gameID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Game cast information.

This endpoint will retrieve the casts of an Game item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Game cast information.
GamesAPI.getGameCast(gameID: gameID, limit: limit, page: page) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameCharacters**
```swift
    open class func getGameCharacters(gameID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Game character information.

This endpoint will retrieve the characters of an Game item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Game character information.
GamesAPI.getGameCharacters(gameID: gameID, limit: limit, page: page) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameRelatedGames**
```swift
    open class func getGameRelatedGames(gameID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Game related-games information.

This endpoint will retrieve the related-games of an Game item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Game related-games information.
GamesAPI.getGameRelatedGames(gameID: gameID, limit: limit, page: page) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
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

# **getGameRelatedLiteratures**
```swift
    open class func getGameRelatedLiteratures(gameID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Game related-literatures information.

This endpoint will retrieve the related-literatures of an Game item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Game related-literatures information.
GamesAPI.getGameRelatedLiteratures(gameID: gameID, limit: limit, page: page) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
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

# **getGameRelatedShows**
```swift
    open class func getGameRelatedShows(gameID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Game related-shows information.

This endpoint will retrieve the related-shows of an Game item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Game related-shows information.
GamesAPI.getGameRelatedShows(gameID: gameID, limit: limit, page: page) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
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

# **getGameStaff**
```swift
    open class func getGameStaff(gameID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Game staff information.

This endpoint will retrieve the staff of an Game item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Game staff information.
GamesAPI.getGameStaff(gameID: gameID, limit: limit, page: page) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameStudios**
```swift
    open class func getGameStudios(gameID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Game studio information.

This endpoint will retrieve the studios of an Game item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Game studio information.
GamesAPI.getGameStudios(gameID: gameID, limit: limit, page: page) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameUpcoming**
```swift
    open class func getGameUpcoming(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Upcoming game information.

This endpoint will retrieve the upcoming Game items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Upcoming game information.
GamesAPI.getGameUpcoming(limit: limit, page: page) { (response, error) in
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

# **postGameRate**
```swift
    open class func postGameRate(gameID: String, rating: Double, description: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Rate an Game.

This endpoint will allow user's to leave a rating for an Game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let gameID = "gameID_example" // String | ID of the game.
let rating = 987 // Double | The rating to leave.
let description = "description_example" // String | The description accompanying the rating. (optional)

// Rate an Game.
GamesAPI.postGameRate(gameID: gameID, rating: rating, description: description) { (response, error) in
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
 **gameID** | **String** | ID of the game. | 
 **rating** | **Double** | The rating to leave. | 
 **description** | **String** | The description accompanying the rating. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

