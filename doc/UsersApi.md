# arasaac_api.api.UsersApi

## Load the API package
```dart
import 'package:arasaac_api/api.dart';
```

All URIs are relative to *https://api.arasaac.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProfile**](UsersApi.md#getprofile) | **GET** /users/profile | 


# **getProfile**
> UserProfileResponse getProfile()



Obtain user profile

### Example
```dart
import 'package:arasaac_api/api.dart';
// TODO Configure OAuth2 access token for authorization: oAuth2
//defaultApiClient.getAuthentication<OAuth>('oAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = ArasaacApi().getUsersApi();

try {
    final response = api.getProfile();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->getProfile: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserProfileResponse**](UserProfileResponse.md)

### Authorization

[oAuth2](../README.md#oAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

