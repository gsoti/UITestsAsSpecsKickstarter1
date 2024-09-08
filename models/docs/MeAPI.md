# MeAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMe**](MeAPI.md#getme) | **GET** /me | Authenticated user profile details.
[**getMeAccessTokens**](MeAPI.md#getmeaccesstokens) | **GET** /me/access-tokens | Get a list of access tokens.
[**getMeAccessTokensAccessToken**](MeAPI.md#getmeaccesstokensaccesstoken) | **GET** /me/access-tokens/{accessToken} | Fetch session details.
[**getMeFavorites**](MeAPI.md#getmefavorites) | **GET** /me/favorites | Get an overview of the user&#39;s favorites.
[**getMeFeedMessages**](MeAPI.md#getmefeedmessages) | **GET** /me/feed-messages | Get feed messages.
[**getMeFollowers**](MeAPI.md#getmefollowers) | **GET** /me/followers | Fetch followers list.
[**getMeFollowing**](MeAPI.md#getmefollowing) | **GET** /me/following | Fetch following list.
[**getMeLibrary**](MeAPI.md#getmelibrary) | **GET** /me/library | Get an overview of the library.
[**getMeNotifications**](MeAPI.md#getmenotifications) | **GET** /me/notifications | Authenticated user&#39;s list of notifications.
[**getMeNotificationsDelete**](MeAPI.md#getmenotificationsdelete) | **POST** /me/notifications/{notificationUUID}/delete | Delete a notification.
[**getMeNotificationsDetails**](MeAPI.md#getmenotificationsdetails) | **GET** /me/notifications/{notificationUUID} | Get a notification&#39;s details.
[**getMeSessions**](MeAPI.md#getmesessions) | **GET** /me/sessions | Get a list of sessions.
[**getMeSessionsSession**](MeAPI.md#getmesessionssession) | **GET** /me/sessions/{sessionID} | Fetch session details.
[**meRecapGet**](MeAPI.md#merecapget) | **GET** /me/recap | Get a list of available Re:CAP years.
[**meRecapYearGet**](MeAPI.md#merecapyearget) | **GET** /me/recap/{year} | Get Re:CAP for year.
[**meRemindersDownloadGet**](MeAPI.md#meremindersdownloadget) | **GET** /me/reminders/download | Download reminders.
[**meRemindersGet**](MeAPI.md#meremindersget) | **GET** /me/reminders | Get an overview reminders.
[**meRemindersPost**](MeAPI.md#mereminderspost) | **POST** /me/reminders | Add or remove reminders.
[**postMe**](MeAPI.md#postme) | **POST** /me | Updates profile information.
[**postMeAccessTokenUpdate**](MeAPI.md#postmeaccesstokenupdate) | **POST** /me/access-tokens/{accessToken}/update | Updates access token.
[**postMeAccessTokensDelete**](MeAPI.md#postmeaccesstokensdelete) | **POST** /me/access-tokens/{accessToken}/delete | Delete an access token.
[**postMeFavoriteAnime**](MeAPI.md#postmefavoriteanime) | **POST** /me/favorites | Add or remove from favorites.
[**postMeLibrary**](MeAPI.md#postmelibrary) | **POST** /me/library | Add an anime to the library.
[**postMeLibraryDelete**](MeAPI.md#postmelibrarydelete) | **POST** /me/library/delete | Remove an object from library.
[**postMeLibraryImport**](MeAPI.md#postmelibraryimport) | **POST** /me/library/import | Import a library export file.
[**postMeNotificationsUpdate**](MeAPI.md#postmenotificationsupdate) | **POST** /me/notifications/update | Update a notification&#39;s status.
[**postMeSessionsDelete**](MeAPI.md#postmesessionsdelete) | **POST** /me/sessions/{sessionID}/delete | Delete a session.


# **getMe**
```swift
    open class func getMe(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Authenticated user profile details.

This endpoint will retrieve the details of the authenticated user's profile.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Authenticated user profile details.
MeAPI.getMe() { (response, error) in
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

# **getMeAccessTokens**
```swift
    open class func getMeAccessTokens(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get a list of access tokens.

This endpoint will retrieve a list of access tokens for the authenticated user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get a list of access tokens.
MeAPI.getMeAccessTokens(limit: limit, page: page) { (response, error) in
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

# **getMeAccessTokensAccessToken**
```swift
    open class func getMeAccessTokensAccessToken(accessToken: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Fetch session details.

This endpoint will retrieve the details of an access token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | The access token whose details to retrieve.

// Fetch session details.
MeAPI.getMeAccessTokensAccessToken(accessToken: accessToken) { (response, error) in
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
 **accessToken** | **String** | The access token whose details to retrieve. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMeFavorites**
```swift
    open class func getMeFavorites(library: LibraryKind, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get an overview of the user's favorites.

This endpoint will retrieve the list of objects in the authenticated user's favorites.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let library = LibraryKind() // LibraryKind | The kind of favorite items to retrieve.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get an overview of the user's favorites.
MeAPI.getMeFavorites(library: library, limit: limit, page: page) { (response, error) in
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
 **library** | [**LibraryKind**](.md) | The kind of favorite items to retrieve. | 
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

# **getMeFeedMessages**
```swift
    open class func getMeFeedMessages(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get feed messages.

This endpoint will retrieve the authenticated user's feed messages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get feed messages.
MeAPI.getMeFeedMessages(limit: limit, page: page) { (response, error) in
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

# **getMeFollowers**
```swift
    open class func getMeFollowers(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Fetch followers list.

This endpoint will retrieve the authenticated user's followers list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Fetch followers list.
MeAPI.getMeFollowers(limit: limit, page: page) { (response, error) in
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

# **getMeFollowing**
```swift
    open class func getMeFollowing(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Fetch following list.

This endpoint will retrieve the authenticated user's following list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Fetch following list.
MeAPI.getMeFollowing(limit: limit, page: page) { (response, error) in
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

# **getMeLibrary**
```swift
    open class func getMeLibrary(library: LibraryKind, status: LibraryStatus, sort: String? = nil, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get an overview of the library.

This endpoint will retrieve the list of objects in the authenticated user's library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let library = LibraryKind() // LibraryKind | The kind of library items to retrieve.
let status = LibraryStatus() // LibraryStatus | The status to retrieve the library items for.
let sort = "sort_example" // String | Available sorting options: - title(asc/desc) - age(newest/oldest) - rating(worst/best) - my-rating(worst/best) (optional)
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get an overview of the library.
MeAPI.getMeLibrary(library: library, status: status, sort: sort, limit: limit, page: page) { (response, error) in
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
 **library** | [**LibraryKind**](.md) | The kind of library items to retrieve. | 
 **status** | [**LibraryStatus**](.md) | The status to retrieve the library items for. | 
 **sort** | **String** | Available sorting options: - title(asc/desc) - age(newest/oldest) - rating(worst/best) - my-rating(worst/best) | [optional] 
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

# **getMeNotifications**
```swift
    open class func getMeNotifications(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Authenticated user's list of notifications.

This endpoint will retrieve the list of the authenticated user's notifications.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Authenticated user's list of notifications.
MeAPI.getMeNotifications() { (response, error) in
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

# **getMeNotificationsDelete**
```swift
    open class func getMeNotificationsDelete(notificationUUID: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete a notification.

This endpoint will delete the authenticated user's notification.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let notificationUUID = "notificationUUID_example" // String | UUID of the notification to be deleted.

// Delete a notification.
MeAPI.getMeNotificationsDelete(notificationUUID: notificationUUID) { (response, error) in
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
 **notificationUUID** | **String** | UUID of the notification to be deleted. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMeNotificationsDetails**
```swift
    open class func getMeNotificationsDetails(notificationUUID: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get a notification's details.

This endpoint will retrieve the details of a notification.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let notificationUUID = "notificationUUID_example" // String | UUID of the notification to be retrieved.

// Get a notification's details.
MeAPI.getMeNotificationsDetails(notificationUUID: notificationUUID) { (response, error) in
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
 **notificationUUID** | **String** | UUID of the notification to be retrieved. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMeSessions**
```swift
    open class func getMeSessions(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get a list of sessions.

This endpoint will retrieve a list of sessions for the authenticated user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get a list of sessions.
MeAPI.getMeSessions(limit: limit, page: page) { (response, error) in
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

# **getMeSessionsSession**
```swift
    open class func getMeSessionsSession(sessionID: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Fetch session details.

This endpoint will retrieve the details of a session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sessionID = "sessionID_example" // String | ID of the session to be retrieved.

// Fetch session details.
MeAPI.getMeSessionsSession(sessionID: sessionID) { (response, error) in
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
 **sessionID** | **String** | ID of the session to be retrieved. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meRecapGet**
```swift
    open class func meRecapGet(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get a list of available Re:CAP years.

This endpoint will retrieve the list of Re:CAP years available for the authenticated user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get a list of available Re:CAP years.
MeAPI.meRecapGet() { (response, error) in
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

# **meRecapYearGet**
```swift
    open class func meRecapYearGet(year: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Re:CAP for year.

This endpoint will retrieve the authenticated user's Re:CAP details for the specified year.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let year = "year_example" // String | Year of the Re:CAP to be retrieved.

// Get Re:CAP for year.
MeAPI.meRecapYearGet(year: year) { (response, error) in
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
 **year** | **String** | Year of the Re:CAP to be retrieved. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meRemindersDownloadGet**
```swift
    open class func meRemindersDownloadGet(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Download reminders.

This endpoint will retrieve the calendar file with anime in the authenticated user's reminder list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Download reminders.
MeAPI.meRemindersDownloadGet() { (response, error) in
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

# **meRemindersGet**
```swift
    open class func meRemindersGet(limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get an overview reminders.

This endpoint will retrieve the list of anime in the authenticated user's reminder list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get an overview reminders.
MeAPI.meRemindersGet(limit: limit, page: page) { (response, error) in
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

# **meRemindersPost**
```swift
    open class func meRemindersPost(animeId: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Add or remove reminders.

This endpoint will add or remove to/from the list of anime in an authenticated user's reminders.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let animeId = 987 // Int | The ID of the Anime to add or remove.

// Add or remove reminders.
MeAPI.meRemindersPost(animeId: animeId) { (response, error) in
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
 **animeId** | **Int** | The ID of the Anime to add or remove. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMe**
```swift
    open class func postMe(username: String? = nil, biography: String? = nil, profileImage: URL? = nil, bannerImage: URL? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Updates profile information.

This endpoint will update the authenticated user's profile information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The new username to set. Send only if user is allowed to change username. (optional)
let biography = "biography_example" // String | The new biography to set. Send <strong>null</strong> to remove. (optional)
let profileImage = URL(string: "https://example.com")! // URL | The new user's profile image. Send <strong>null</strong> to remove. (optional)
let bannerImage = URL(string: "https://example.com")! // URL | The new user's banner image. Send <strong>null</strong> to remove. (optional)

// Updates profile information.
MeAPI.postMe(username: username, biography: biography, profileImage: profileImage, bannerImage: bannerImage) { (response, error) in
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
 **username** | **String** | The new username to set. Send only if user is allowed to change username. | [optional] 
 **biography** | **String** | The new biography to set. Send &lt;strong&gt;null&lt;/strong&gt; to remove. | [optional] 
 **profileImage** | **URL** | The new user&#39;s profile image. Send &lt;strong&gt;null&lt;/strong&gt; to remove. | [optional] 
 **bannerImage** | **URL** | The new user&#39;s banner image. Send &lt;strong&gt;null&lt;/strong&gt; to remove. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMeAccessTokenUpdate**
```swift
    open class func postMeAccessTokenUpdate(accessToken: String, apnDeviceToken: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Updates access token.

This endpoint will update the information of an authenticated user's access token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | ID of the access token to be updated.
let apnDeviceToken = "apnDeviceToken_example" // String | The new APN device token for the access token.

// Updates access token.
MeAPI.postMeAccessTokenUpdate(accessToken: accessToken, apnDeviceToken: apnDeviceToken) { (response, error) in
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
 **accessToken** | **String** | ID of the access token to be updated. | 
 **apnDeviceToken** | **String** | The new APN device token for the access token. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMeAccessTokensDelete**
```swift
    open class func postMeAccessTokensDelete(accessToken: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete an access token.

This endpoint will delete an authenticated user's access token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | ID of the access token to be deleted.

// Delete an access token.
MeAPI.postMeAccessTokensDelete(accessToken: accessToken) { (response, error) in
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
 **accessToken** | **String** | ID of the access token to be deleted. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMeFavoriteAnime**
```swift
    open class func postMeFavoriteAnime(animeId: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Add or remove from favorites.

This endpoint will add or remove an anime to/from the authenticated user's favorites.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let animeId = 987 // Int | The ID of the Anime to add.

// Add or remove from favorites.
MeAPI.postMeFavoriteAnime(animeId: animeId) { (response, error) in
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
 **animeId** | **Int** | The ID of the Anime to add. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMeLibrary**
```swift
    open class func postMeLibrary(library: LibraryKind, modelId: String, status: LibraryStatus, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Add an anime to the library.

This endpoint will add to the list of anime in the authenticated user's library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let library = LibraryKind() // LibraryKind | 
let modelId = "modelId_example" // String | The ID of the model to add.
let status = LibraryStatus() // LibraryStatus | 

// Add an anime to the library.
MeAPI.postMeLibrary(library: library, modelId: modelId, status: status) { (response, error) in
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
 **library** | [**LibraryKind**](LibraryKind.md) |  | 
 **modelId** | **String** | The ID of the model to add. | 
 **status** | [**LibraryStatus**](LibraryStatus.md) |  | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMeLibraryDelete**
```swift
    open class func postMeLibraryDelete(library: LibraryKind, modelId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Remove an object from library.

This endpoint will remove an object from the authenticated user's library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let library = LibraryKind() // LibraryKind | 
let modelId = "modelId_example" // String | The ID of the model to remove.

// Remove an object from library.
MeAPI.postMeLibraryDelete(library: library, modelId: modelId) { (response, error) in
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
 **library** | [**LibraryKind**](LibraryKind.md) |  | 
 **modelId** | **String** | The ID of the model to remove. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMeLibraryImport**
```swift
    open class func postMeLibraryImport(file: URL, library: LibraryKind, service: ImportService, behavior: ImportBehavior, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Import a library export file.

This endpoint will import a library export file into the authenticated user's library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let file = URL(string: "https://example.com")! // URL | The library export file
let library = LibraryKind() // LibraryKind | 
let service = ImportService() // ImportService | 
let behavior = ImportBehavior() // ImportBehavior | 

// Import a library export file.
MeAPI.postMeLibraryImport(file: file, library: library, service: service, behavior: behavior) { (response, error) in
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
 **file** | **URL** | The library export file | 
 **library** | [**LibraryKind**](LibraryKind.md) |  | 
 **service** | [**ImportService**](ImportService.md) |  | 
 **behavior** | [**ImportBehavior**](ImportBehavior.md) |  | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMeNotificationsUpdate**
```swift
    open class func postMeNotificationsUpdate(notification: Set<String>, read: NotificationReadStatus, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update a notification's status.

This endpoint will update the status of a single, multiple or all notifications of the authenticated user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let notification = ["inner_example"] // Set<String> | The UUID of the notification to update. Use \\\"all\\\" to update all of the user's notifications.
let read = NotificationReadStatus() // NotificationReadStatus | 

// Update a notification's status.
MeAPI.postMeNotificationsUpdate(notification: notification, read: read) { (response, error) in
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
 **notification** | [**Set&lt;String&gt;**](String.md) | The UUID of the notification to update. Use \\\&quot;all\\\&quot; to update all of the user&#39;s notifications. | 
 **read** | [**NotificationReadStatus**](NotificationReadStatus.md) |  | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMeSessionsDelete**
```swift
    open class func postMeSessionsDelete(sessionID: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete a session.

This endpoint will delete an authenticated user's session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sessionID = "sessionID_example" // String | ID of the session to be deleted.

// Delete a session.
MeAPI.postMeSessionsDelete(sessionID: sessionID) { (response, error) in
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
 **sessionID** | **String** | ID of the session to be deleted. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

