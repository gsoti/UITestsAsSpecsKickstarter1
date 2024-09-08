# ImagesAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRandomImages**](ImagesAPI.md#getrandomimages) | **GET** /images/random | Random images.


# **getRandomImages**
```swift
    open class func getRandomImages(type: MediaType, collection: MediaCollection, limit: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Random images.

This endpoint will retrieve random images.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = MediaType() // MediaType | The type of images to retrieve.
let collection = MediaCollection() // MediaCollection | The collection of images to retrieve.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)

// Random images.
ImagesAPI.getRandomImages(type: type, collection: collection, limit: limit) { (response, error) in
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
 **type** | [**MediaType**](.md) | The type of images to retrieve. | 
 **collection** | [**MediaCollection**](.md) | The collection of images to retrieve. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

