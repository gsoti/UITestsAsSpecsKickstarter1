# ScheduleAPI

All URIs are relative to *https://api.kurozora.app/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSchedule**](ScheduleAPI.md#getschedule) | **GET** /schedule | Get schedule results.


# **getSchedule**
```swift
    open class func getSchedule(type: ScheduleKind, date: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get schedule results.

This endpoint will return schedule results for the specified query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = ScheduleKind() // ScheduleKind | The schedule type.
let date = "date_example" // String | Format: Y-m-d The start date of the schedule. Keep empty for current date. (optional)

// Get schedule results.
ScheduleAPI.getSchedule(type: type, date: date) { (response, error) in
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
 **type** | [**ScheduleKind**](.md) | The schedule type. | 
 **date** | **String** | Format: Y-m-d The start date of the schedule. Keep empty for current date. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

