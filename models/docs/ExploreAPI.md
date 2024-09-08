# ExploreAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExplore**](ExploreAPI.md#getexplore) | **GET** /explore | (optional authentication) Explore page.
[**getExploreDetails**](ExploreAPI.md#getexploredetails) | **GET** /explore/{exploreCategoryID} | (optional authentication) Explore category details.


# **getExplore**
```swift
    open class func getExplore(genreId: Int? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(optional authentication) Explore page.

This endpoint will retrieve the explore page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let genreId = 987 // Int | ID of the genre to filter on. (optional)

// (optional authentication) Explore page.
ExploreAPI.getExplore(genreId: genreId) { (response, error) in
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
 **genreId** | **Int** | ID of the genre to filter on. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExploreDetails**
```swift
    open class func getExploreDetails(exploreCategoryID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(optional authentication) Explore category details.

This endpoint will retrieve the details to for the explore category.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let exploreCategoryID = 987 // Int | ID of the explore category.

// (optional authentication) Explore category details.
ExploreAPI.getExploreDetails(exploreCategoryID: exploreCategoryID) { (response, error) in
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
 **exploreCategoryID** | **Int** | ID of the explore category. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

