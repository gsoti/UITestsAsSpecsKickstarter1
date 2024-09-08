# StoreAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStore**](StoreAPI.md#getstore) | **GET** /store | Fetch store products.
[**postStoreVerify**](StoreAPI.md#poststoreverify) | **POST** /store/verify | Verify receipt


# **getStore**
```swift
    open class func getStore(type: StoreProductType? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Fetch store products.

This endpoint will retrieve the available products from the store

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = StoreProductType() // StoreProductType | The type of products to fetch. - 0: Consumable - 1: Non-Consumable - 2: Non-Renewing Subscription - 3: Auto-Renewing Subscription (optional)

// Fetch store products.
StoreAPI.getStore(type: type) { (response, error) in
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
 **type** | [**StoreProductType**](.md) | The type of products to fetch. - 0: Consumable - 1: Non-Consumable - 2: Non-Renewing Subscription - 3: Auto-Renewing Subscription | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStoreVerify**
```swift
    open class func postStoreVerify(receipt: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Verify receipt

This endpoint will verify the receipt for authenticity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let receipt = "receipt_example" // String | The Base64 encoded receipt data.

// Verify receipt
StoreAPI.postStoreVerify(receipt: receipt) { (response, error) in
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
 **receipt** | **String** | The Base64 encoded receipt data. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

