# SeasonsAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSeasonsDetails**](SeasonsAPI.md#getseasonsdetails) | **GET** /seasons/{seasonID} | Get specific season details.
[**getSeasonsEpisodes**](SeasonsAPI.md#getseasonsepisodes) | **GET** /seasons/{seasonID}/episodes | Retrieve season episodes.
[**postSeasonsWatched**](SeasonsAPI.md#postseasonswatched) | **POST** /seasons/{seasonID}/watched | Marks the episodes of a season as \&quot;watched\&quot; or \&quot;not watched\&quot;.


# **getSeasonsDetails**
```swift
    open class func getSeasonsDetails(seasonID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get specific season details.

This endpoint will retrieve the details of a specific season.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let seasonID = 987 // Int | ID of the season.

// Get specific season details.
SeasonsAPI.getSeasonsDetails(seasonID: seasonID) { (response, error) in
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
 **seasonID** | **Int** | ID of the season. | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeasonsEpisodes**
```swift
    open class func getSeasonsEpisodes(seasonID: Int, hideFillers: HideFillers_getSeasonsEpisodes? = nil, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Retrieve season episodes.

This endpoint will retrieve the episodes in a certain season.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let seasonID = 987 // Int | ID of the season.
let hideFillers = 987 // Int | Indicates whether filler episodes should be included. - 0 = Include fillers - 1 = No fillers (optional) (default to ._0)
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Retrieve season episodes.
SeasonsAPI.getSeasonsEpisodes(seasonID: seasonID, hideFillers: hideFillers, limit: limit, page: page) { (response, error) in
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
 **seasonID** | **Int** | ID of the season. | 
 **hideFillers** | **Int** | Indicates whether filler episodes should be included. - 0 &#x3D; Include fillers - 1 &#x3D; No fillers | [optional] [default to ._0]
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

# **postSeasonsWatched**
```swift
    open class func postSeasonsWatched(seasonID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Marks the episodes of a season as \"watched\" or \"not watched\".

This endpoint will updated the watched status for the episodes of a season.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let seasonID = 987 // Int | ID of the season.

// Marks the episodes of a season as \"watched\" or \"not watched\".
SeasonsAPI.postSeasonsWatched(seasonID: seasonID) { (response, error) in
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
 **seasonID** | **Int** | ID of the season. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

