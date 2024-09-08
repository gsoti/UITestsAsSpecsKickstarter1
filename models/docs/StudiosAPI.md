# StudiosAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStudiosAnime**](StudiosAPI.md#getstudiosanime) | **GET** /studios/{studioID}/anime | (Optional authentication) Get studio anime details.
[**getStudiosDetails**](StudiosAPI.md#getstudiosdetails) | **GET** /studios/{studioID} | (Optional authentication) Get studio details.


# **getStudiosAnime**
```swift
    open class func getStudiosAnime(studioID: Int, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(Optional authentication) Get studio anime details.

This endpoint will retrieve the anime details for a studio.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let studioID = 987 // Int | ID of the studio.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// (Optional authentication) Get studio anime details.
StudiosAPI.getStudiosAnime(studioID: studioID, limit: limit, page: page) { (response, error) in
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
 **studioID** | **Int** | ID of the studio. | 
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

# **getStudiosDetails**
```swift
    open class func getStudiosDetails(studioID: Int, include: [Include_getStudiosDetails]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(Optional authentication) Get studio details.

This endpoint will retrieve the details of a specific studio.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let studioID = 987 // Int | ID of the studio.
let include = ["include_example"] // [String] | The relations to include in the response. (optional)

// (Optional authentication) Get studio details.
StudiosAPI.getStudiosDetails(studioID: studioID, include: include) { (response, error) in
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
 **studioID** | **Int** | ID of the studio. | 
 **include** | [**[String]**](String.md) | The relations to include in the response. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

