# MyanimelistAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMyAnimeListAnime**](MyanimelistAPI.md#getmyanimelistanime) | **GET** /myanimelist/anime/{malID} | (optional authentication) Anime details.
[**getMyAnimeListManga**](MyanimelistAPI.md#getmyanimelistmanga) | **GET** /myanimelist/manga/{malID} | (optional authentication) Manga details.


# **getMyAnimeListAnime**
```swift
    open class func getMyAnimeListAnime(malID: String, include: [Include_getMyAnimeListAnime]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(optional authentication) Anime details.

This endpoint will retrieve the details of an Anime item using the MyAnimeList ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let malID = "malID_example" // String | MyAnimeList ID of the anime.
let include = ["include_example"] // [String] | The relations to include in the response. (optional)

// (optional authentication) Anime details.
MyanimelistAPI.getMyAnimeListAnime(malID: malID, include: include) { (response, error) in
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
 **malID** | **String** | MyAnimeList ID of the anime. | 
 **include** | [**[String]**](String.md) | The relations to include in the response. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyAnimeListManga**
```swift
    open class func getMyAnimeListManga(malID: String, include: [Include_getMyAnimeListManga]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(optional authentication) Manga details.

This endpoint will retrieve the details of an Manga item using the MyAnimeList ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let malID = "malID_example" // String | MyAnimeList ID of the manga.
let include = ["include_example"] // [String] | The relations to include in the response. (optional)

// (optional authentication) Manga details.
MyanimelistAPI.getMyAnimeListManga(malID: malID, include: include) { (response, error) in
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
 **malID** | **String** | MyAnimeList ID of the manga. | 
 **include** | [**[String]**](String.md) | The relations to include in the response. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

