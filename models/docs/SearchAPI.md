# SearchAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSearch**](SearchAPI.md#getsearch) | **GET** /search | Get search results.


# **getSearch**
```swift
    open class func getSearch(scope: SearchScope, types: [Types_getSearch], query: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get search results.

This endpoint will return search results for the specified query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let scope = SearchScope() // SearchScope | The scope of the search.
let types = ["types_example"] // [String] | The types used to perform the search.
let query = "query_example" // String | The search query.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 25. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get search results.
SearchAPI.getSearch(scope: scope, types: types, query: query, limit: limit, page: page) { (response, error) in
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
 **scope** | [**SearchScope**](.md) | The scope of the search. | 
 **types** | [**[String]**](String.md) | The types used to perform the search. | 
 **query** | **String** | The search query. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 25. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

