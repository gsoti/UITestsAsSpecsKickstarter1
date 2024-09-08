# ThemeStoreAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getThemeStore**](ThemeStoreAPI.md#getthemestore) | **GET** /theme-store | Retrieve an overview of theme store items.
[**getThemeStoreDetails**](ThemeStoreAPI.md#getthemestoredetails) | **GET** /theme-store/{themeID} | Get specific theme store item details.


# **getThemeStore**
```swift
    open class func getThemeStore(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Retrieve an overview of theme store items.

This endpoint will retrieve an overview of theme store items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Retrieve an overview of theme store items.
ThemeStoreAPI.getThemeStore() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemeStoreDetails**
```swift
    open class func getThemeStoreDetails(themeID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get specific theme store item details.

This endpoint will retrieve the details of a specific theme store item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let themeID = 987 // Int | ID of the theme store item.

// Get specific theme store item details.
ThemeStoreAPI.getThemeStoreDetails(themeID: themeID) { (response, error) in
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
 **themeID** | **Int** | ID of the theme store item. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

