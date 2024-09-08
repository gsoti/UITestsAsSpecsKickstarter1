# EpisodesAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEpisodesDetails**](EpisodesAPI.md#getepisodesdetails) | **GET** /episodes/{episodeID} | Get specific episode details.
[**postEpisodeRate**](EpisodesAPI.md#postepisoderate) | **POST** /episodes/{episodeID}/rate | Rate an Episode.
[**postEpisodesWatched**](EpisodesAPI.md#postepisodeswatched) | **POST** /episodes/{episodeID}/watched | Marks an episode as \&quot;watched\&quot; or \&quot;not watched\&quot;.


# **getEpisodesDetails**
```swift
    open class func getEpisodesDetails(episodeID: Int, include: [Include_getEpisodesDetails]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get specific episode details.

This endpoint will retrieve the details of a specific episode.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let episodeID = 987 // Int | ID of the episode.
let include = ["include_example"] // [String] | The relations to include in the response. (optional)

// Get specific episode details.
EpisodesAPI.getEpisodesDetails(episodeID: episodeID, include: include) { (response, error) in
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
 **episodeID** | **Int** | ID of the episode. | 
 **include** | [**[String]**](String.md) | The relations to include in the response. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postEpisodeRate**
```swift
    open class func postEpisodeRate(episodeID: Int, rating: Double, description: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Rate an Episode.

This endpoint will allow user's to leave a rating for an Episode.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let episodeID = 987 // Int | ID of the episode.
let rating = 987 // Double | The rating to leave.
let description = "description_example" // String | The description accompanying the rating. (optional)

// Rate an Episode.
EpisodesAPI.postEpisodeRate(episodeID: episodeID, rating: rating, description: description) { (response, error) in
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
 **episodeID** | **Int** | ID of the episode. | 
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

# **postEpisodesWatched**
```swift
    open class func postEpisodesWatched(episodeID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Marks an episode as \"watched\" or \"not watched\".

This endpoint will updated the watched status for an episode.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let episodeID = 987 // Int | ID of the episode.

// Marks an episode as \"watched\" or \"not watched\".
EpisodesAPI.postEpisodesWatched(episodeID: episodeID) { (response, error) in
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
 **episodeID** | **Int** | ID of the episode. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

