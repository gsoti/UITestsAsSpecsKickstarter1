# CastAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCast**](CastAPI.md#getcast) | **GET** /cast/{castID} | Cast details.


# **getCast**
```swift
    open class func getCast(castID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Cast details.

This endpoint will retrieve the details of a cast.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let castID = 987 // Int | ID of the cast.

// Cast details.
CastAPI.getCast(castID: castID) { (response, error) in
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
 **castID** | **Int** | ID of the cast. | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

