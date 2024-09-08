# LegalAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPrivacyPolicy**](LegalAPI.md#getprivacypolicy) | **GET** /legal/privacy-policy | Retrieve latest Privacy Policy.
[**getTermsOfUse**](LegalAPI.md#gettermsofuse) | **GET** /legal/terms-of-use | Retrieve latest Terms of Use.


# **getPrivacyPolicy**
```swift
    open class func getPrivacyPolicy(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Retrieve latest Privacy Policy.

This endpoint will retrieve the latest Privacy Policy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Retrieve latest Privacy Policy.
LegalAPI.getPrivacyPolicy() { (response, error) in
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

# **getTermsOfUse**
```swift
    open class func getTermsOfUse(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Retrieve latest Terms of Use.

This endpoint will retrieve the latest Terms of Use.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Retrieve latest Terms of Use.
LegalAPI.getTermsOfUse() { (response, error) in
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

