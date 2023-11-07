# arasaac_api.api.PhrasesApi

## Load the API package
```dart
import 'package:arasaac_api/api.dart';
```

All URIs are relative to *https://api.arasaac.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFlex**](PhrasesApi.md#getflex) | **GET** /phrases/flex/{language}/{phrase} | 
[**postReport**](PhrasesApi.md#postreport) | **POST** /phrases/report | 


# **getFlex**
> PhraseResponse getFlex(language, phrase, tense, idPictograms)



Get a phase in natural language based on pictogram keywords. It tries to convert sentences like *I + to eat + hamburger + yesterday* to  *I ate a hamburger yesterday*

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPhrasesApi();
final String language = language_example; // String | Languages than we currently support for natural language analysis.
final String phrase = phrase_example; // String | Phrase to convert to natural language.
final String tense = tense_example; // String | Force the verb tense for natural language.
final BuiltList<int> idPictograms = ; // BuiltList<int> | List of pictograms by id used in one sentence.

try {
    final response = api.getFlex(language, phrase, tense, idPictograms);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PhrasesApi->getFlex: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| Languages than we currently support for natural language analysis. | 
 **phrase** | **String**| Phrase to convert to natural language. | 
 **tense** | **String**| Force the verb tense for natural language. | [optional] 
 **idPictograms** | [**BuiltList&lt;int&gt;**](int.md)| List of pictograms by id used in one sentence. | [optional] 

### Return type

[**PhraseResponse**](PhraseResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postReport**
> PhraseResponse postReport(originalPhrase, returnedPhrase, expectedPhrase)



Send a report when converting a sentence to natural language does not work as expected

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPhrasesApi();
final String originalPhrase = originalPhrase_example; // String | Phrase to convert to natural language.
final String returnedPhrase = returnedPhrase_example; // String | Phrase returned from natural language processing.
final String expectedPhrase = expectedPhrase_example; // String | Phrase expected from natural language processing.

try {
    final response = api.postReport(originalPhrase, returnedPhrase, expectedPhrase);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PhrasesApi->postReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **originalPhrase** | **String**| Phrase to convert to natural language. | 
 **returnedPhrase** | **String**| Phrase returned from natural language processing. | 
 **expectedPhrase** | **String**| Phrase expected from natural language processing. | [optional] 

### Return type

[**PhraseResponse**](PhraseResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

