# GenresAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGenreDetails**](GenresAPI.md#getgenredetails) | **GET** /genres/{genreID} | Get genre details.
[**getGenres**](GenresAPI.md#getgenres) | **GET** /genres | Genres list.


# **getGenreDetails**
```swift
    open class func getGenreDetails(genreID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get genre details.

This endpoint will retrieve the details of a specific genre.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let genreID = 987 // Int | ID of the genre.

// Get genre details.
GenresAPI.getGenreDetails(genreID: genreID) { (response, error) in
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
 **genreID** | **Int** | ID of the genre. | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGenres**
```swift
    open class func getGenres(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Genres list.

This endpoint will retrieve the genres.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Genres list.
GenresAPI.getGenres() { (response, error) in
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

