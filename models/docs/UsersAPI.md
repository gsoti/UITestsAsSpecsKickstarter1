# UsersAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUser**](UsersAPI.md#deleteuser) | **DELETE** /users/delete | Delete an account.
[**getUsersFavorites**](UsersAPI.md#getusersfavorites) | **GET** /users/{userID}/favorites | Get an overview of the user&#39;s favorites
[**getUsersFeedMessages**](UsersAPI.md#getusersfeedmessages) | **GET** /users/{userID}/feed-messages | Get feed messages.
[**getUsersFollowers**](UsersAPI.md#getusersfollowers) | **GET** /users/{userID}/followers | Fetch followers list.
[**getUsersFollowing**](UsersAPI.md#getusersfollowing) | **GET** /users/{userID}/following | Fetch following list.
[**getUsersProfile**](UsersAPI.md#getusersprofile) | **GET** /users/{userID}/profile | (optional authentication) User profile details.
[**postResetPassword**](UsersAPI.md#postresetpassword) | **POST** /users/reset-password | Request a password reset for a user
[**postSignIn**](UsersAPI.md#postsignin) | **POST** /users/signin | Sign in to account.
[**postSiwASignIn**](UsersAPI.md#postsiwasignin) | **POST** /users/siwa/signin | Sign in or sign up a user using Sign in with Apple.
[**postUsers**](UsersAPI.md#postusers) | **POST** /users | Register a new user
[**postUsersFollow**](UsersAPI.md#postusersfollow) | **POST** /users/{userID}/follow | Follow or unfollow another user


# **deleteUser**
```swift
    open class func deleteUser(password: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete an account.

This endpoint will delete a user's account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let password = "password_example" // String | The user's password

// Delete an account.
UsersAPI.deleteUser(password: password) { (response, error) in
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
 **password** | **String** | The user&#39;s password | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersFavorites**
```swift
    open class func getUsersFavorites(userID: Int, library: LibraryKind, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get an overview of the user's favorites

This endpoint will retrieve the list of objects in the user's favorites list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = 987 // Int | ID of the user.
let library = LibraryKind() // LibraryKind | The kind of favorite items to retrieve.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get an overview of the user's favorites
UsersAPI.getUsersFavorites(userID: userID, library: library, limit: limit, page: page) { (response, error) in
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
 **userID** | **Int** | ID of the user. | 
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

# **getUsersFeedMessages**
```swift
    open class func getUsersFeedMessages(userID: Int, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get feed messages.

This endpoint will retrieve the user's feed messages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = 987 // Int | ID of the user.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Get feed messages.
UsersAPI.getUsersFeedMessages(userID: userID, limit: limit, page: page) { (response, error) in
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
 **userID** | **Int** | ID of the user. | 
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

# **getUsersFollowers**
```swift
    open class func getUsersFollowers(userID: Int, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Fetch followers list.

This endpoint will retrieve the user's followers list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = 987 // Int | ID of the user.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Fetch followers list.
UsersAPI.getUsersFollowers(userID: userID, limit: limit, page: page) { (response, error) in
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
 **userID** | **Int** | ID of the user. | 
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

# **getUsersFollowing**
```swift
    open class func getUsersFollowing(userID: Int, limit: String? = nil, page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Fetch following list.

This endpoint will retrieve the user's following list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = 987 // Int | ID of the user.
let limit = "limit_example" // String | The limit on the number of objects, or number of objects in the specified relationship, that are returned. The default value is 25 and the maximum value is 100. (optional)
let page = "page_example" // String | The next page or group of objects to fetch. The default value is 1. (optional)

// Fetch following list.
UsersAPI.getUsersFollowing(userID: userID, limit: limit, page: page) { (response, error) in
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
 **userID** | **Int** | ID of the user. | 
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

# **getUsersProfile**
```swift
    open class func getUsersProfile(userID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

(optional authentication) User profile details.

This endpoint will retrieve the details of a user's profile.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = 987 // Int | ID of the user.

// (optional authentication) User profile details.
UsersAPI.getUsersProfile(userID: userID) { (response, error) in
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
 **userID** | **Int** | ID of the user. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postResetPassword**
```swift
    open class func postResetPassword(email: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Request a password reset for a user

This endpoint will send an email to the user to reset their password.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | The email of the user to request a password reset.

// Request a password reset for a user
UsersAPI.postResetPassword(email: email) { (response, error) in
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
 **email** | **String** | The email of the user to request a password reset. | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSignIn**
```swift
    open class func postSignIn(email: String, password: String, platform: String, platformVersion: String, deviceVendor: String, deviceModel: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Sign in to account.

This endpoint will sign in a user to their account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | The user's email address
let password = "password_example" // String | The user's password
let platform = "platform_example" // String | The platform that was used to create the session
let platformVersion = "platformVersion_example" // String | The platform version that was used to create the session
let deviceVendor = "deviceVendor_example" // String | The device vendor that was used to create the session
let deviceModel = "deviceModel_example" // String | The device model that was used to create the session

// Sign in to account.
UsersAPI.postSignIn(email: email, password: password, platform: platform, platformVersion: platformVersion, deviceVendor: deviceVendor, deviceModel: deviceModel) { (response, error) in
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
 **email** | **String** | The user&#39;s email address | 
 **password** | **String** | The user&#39;s password | 
 **platform** | **String** | The platform that was used to create the session | 
 **platformVersion** | **String** | The platform version that was used to create the session | 
 **deviceVendor** | **String** | The device vendor that was used to create the session | 
 **deviceModel** | **String** | The device model that was used to create the session | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSiwASignIn**
```swift
    open class func postSiwASignIn(token: String, platform: String, platformVersion: String, deviceVendor: String, deviceModel: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Sign in or sign up a user using Sign in with Apple.

This endpoint will sign in or sign up a user using Sign in with Apple.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let token = "token_example" // String | The identity token (JWT) as provided by Apple
let platform = "platform_example" // String | The platform that was used to create the session
let platformVersion = "platformVersion_example" // String | The platform version that was used to create the session
let deviceVendor = "deviceVendor_example" // String | The device vendor that was used to create the session
let deviceModel = "deviceModel_example" // String | The device model that was used to create the session

// Sign in or sign up a user using Sign in with Apple.
UsersAPI.postSiwASignIn(token: token, platform: platform, platformVersion: platformVersion, deviceVendor: deviceVendor, deviceModel: deviceModel) { (response, error) in
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
 **token** | **String** | The identity token (JWT) as provided by Apple | 
 **platform** | **String** | The platform that was used to create the session | 
 **platformVersion** | **String** | The platform version that was used to create the session | 
 **deviceVendor** | **String** | The device vendor that was used to create the session | 
 **deviceModel** | **String** | The device model that was used to create the session | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUsers**
```swift
    open class func postUsers(username: String, password: String, email: String, profileImage: URL? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Register a new user

This endpoint will create a new user based on the given details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The new user's username
let password = "password_example" // String | The new user's password
let email = "email_example" // String | The new user's email
let profileImage = URL(string: "https://example.com")! // URL | The new user's profile image (optional)

// Register a new user
UsersAPI.postUsers(username: username, password: password, email: email, profileImage: profileImage) { (response, error) in
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
 **username** | **String** | The new user&#39;s username | 
 **password** | **String** | The new user&#39;s password | 
 **email** | **String** | The new user&#39;s email | 
 **profileImage** | **URL** | The new user&#39;s profile image | [optional] 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUsersFollow**
```swift
    open class func postUsersFollow(userID: Int, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Follow or unfollow another user

This endpoint will follow or unfollow another user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = 987 // Int | ID of the user.

// Follow or unfollow another user
UsersAPI.postUsersFollow(userID: userID) { (response, error) in
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
 **userID** | **Int** | ID of the user. | 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

