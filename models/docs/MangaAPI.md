# MangaAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getManga**](MangaAPI.md#getmanga) | **GET** /manga/{mangaID} | (optional authentication) Manga details.
[**getMangaCast**](MangaAPI.md#getmangacast) | **GET** /manga/{mangaID}/cast | Manga cast information.
[**getMangaCharacters**](MangaAPI.md#getmangacharacters) | **GET** /manga/{mangaID}/characters | Manga character information.
[**getMangaRelatedGames**](MangaAPI.md#getmangarelatedgames) | **GET** /manga/{mangaID}/related-games | Manga related-games information.
[**getMangaRelatedLiteratures**](MangaAPI.md#getmangarelatedliteratures) | **GET** /manga/{mangaID}/related-literatures | Manga related-literatures information.
[**getMangaRelatedShows**](MangaAPI.md#getmangarelatedshows) | **GET** /manga/{mangaID}/related-shows | Manga related-shows information.
[**getMangaStaff**](MangaAPI.md#getmangastaff) | **GET** /manga/{mangaID}/staff | Manga staff information.
[**getMangaStudios**](MangaAPI.md#getmangastudios) | **GET** /manga/{mangaID}/studios | Manga studio information.
[**getMangaUpcoming**](MangaAPI.md#getmangaupcoming) | **GET** /manga/upcoming | Upcoming manga information.
[**postMangaRate**](MangaAPI.md#postmangarate) | **POST** /manga/{mangaID}/rate | Rate an Manga.


# **getManga**
```swift
    open class func getManga(mangaID: String, include: [Include_getManga]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(optional authentication) Manga details.

This endpoint will retrieve the details of an Manga item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let include = ["include_example"] // [String] | The relations to include in the response. (optional)

// (optional authentication) Manga details.
MangaAPI.getManga(mangaID: mangaID, include: include) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **include** | [**[String]**](String.md) | The relations to include in the response. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMangaCast**
```swift
    open class func getMangaCast(mangaID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Manga cast information.

This endpoint will retrieve the casts of an Manga item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Manga cast information.
MangaAPI.getMangaCast(mangaID: mangaID, limit: limit, page: page) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMangaCharacters**
```swift
    open class func getMangaCharacters(mangaID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Manga character information.

This endpoint will retrieve the characters of an Manga item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Manga character information.
MangaAPI.getMangaCharacters(mangaID: mangaID, limit: limit, page: page) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMangaRelatedGames**
```swift
    open class func getMangaRelatedGames(mangaID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Manga related-games information.

This endpoint will retrieve the related-games of an Manga item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Manga related-games information.
MangaAPI.getMangaRelatedGames(mangaID: mangaID, limit: limit, page: page) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMangaRelatedLiteratures**
```swift
    open class func getMangaRelatedLiteratures(mangaID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Manga related-literatures information.

This endpoint will retrieve the related-literatures of an Manga item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Manga related-literatures information.
MangaAPI.getMangaRelatedLiteratures(mangaID: mangaID, limit: limit, page: page) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMangaRelatedShows**
```swift
    open class func getMangaRelatedShows(mangaID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Manga related-shows information.

This endpoint will retrieve the related-shows of an Manga item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Manga related-shows information.
MangaAPI.getMangaRelatedShows(mangaID: mangaID, limit: limit, page: page) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMangaStaff**
```swift
    open class func getMangaStaff(mangaID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Manga staff information.

This endpoint will retrieve the staff of an Manga item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Manga staff information.
MangaAPI.getMangaStaff(mangaID: mangaID, limit: limit, page: page) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMangaStudios**
```swift
    open class func getMangaStudios(mangaID: String, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Manga studio information.

This endpoint will retrieve the studios of an Manga item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Manga studio information.
MangaAPI.getMangaStudios(mangaID: mangaID, limit: limit, page: page) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMangaUpcoming**
```swift
    open class func getMangaUpcoming(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Upcoming manga information.

This endpoint will retrieve the upcoming Manga items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Upcoming manga information.
MangaAPI.getMangaUpcoming(limit: limit, page: page) { (response, error) in
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
 **limit** | **String** | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. | [optional] 
 **page** | **String** | The next page or group of objects to fetch. The default value is 1. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMangaRate**
```swift
    open class func postMangaRate(mangaID: String, rating: Double, description: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Rate an Manga.

This endpoint will allow user's to leave a rating for an Manga.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mangaID = "mangaID_example" // String | ID of the manga.
let rating = 987 // Double | The rating to leave.
let description = "description_example" // String | The description accompanying the rating. (optional)

// Rate an Manga.
MangaAPI.postMangaRate(mangaID: mangaID, rating: rating, description: description) { (response, error) in
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
 **mangaID** | **String** | ID of the manga. | 
 **rating** | **Double** | The rating to leave. | 
 **description** | **String** | The description accompanying the rating. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

