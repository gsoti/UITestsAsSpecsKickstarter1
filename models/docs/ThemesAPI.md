# ThemesAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getThemeDetails**](ThemesAPI.md#getthemedetails) | **GET** /themes/{themeID} | Get theme details.
[**getThemes**](ThemesAPI.md#getthemes) | **GET** /themes | Themes list.


# **getThemeDetails**
```swift
    open class func getThemeDetails(themeID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get theme details.

This endpoint will retrieve the details of a specific theme.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let themeID = 987 // Int | ID of the theme.

// Get theme details.
ThemesAPI.getThemeDetails(themeID: themeID) { (response, error) in
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
 **themeID** | **Int** | ID of the theme. | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemes**
```swift
    open class func getThemes(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Themes list.

This endpoint will retrieve the themes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Themes list.
ThemesAPI.getThemes() { (response, error) in
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

