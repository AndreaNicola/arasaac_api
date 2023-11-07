# arasaac_api.api.KeywordsApi

## Load the API package
```dart
import 'package:arasaac_api/api.dart';
```

All URIs are relative to *https://api.arasaac.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAll**](KeywordsApi.md#getall) | **GET** /keywords/{language} | 


# **getAll**
> KeywordsResponse getAll(language)



Obtain a list of keywords for pictograms for an specific language (es, en...)

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getKeywordsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.

try {
    final response = api.getAll(language);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KeywordsApi->getAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 

### Return type

[**KeywordsResponse**](KeywordsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

