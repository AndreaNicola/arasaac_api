# arasaac_api.api.PictogramsApi

## Load the API package
```dart
import 'package:arasaac_api/api.dart';
```

All URIs are relative to *https://api.arasaac.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bestSearchPictograms**](PictogramsApi.md#bestsearchpictograms) | **GET** /pictograms/{language}/bestsearch/{searchText} | 
[**getAllPictograms**](PictogramsApi.md#getallpictograms) | **GET** /pictograms/all/{language} | 
[**getLastPictograms**](PictogramsApi.md#getlastpictograms) | **GET** /pictograms/{language}/new/{numItems} | 
[**getNewPictograms**](PictogramsApi.md#getnewpictograms) | **GET** /pictograms/{language}/days/{days} | 
[**getPictogramById**](PictogramsApi.md#getpictogrambyid) | **GET** /pictograms/{language}/{idPictogram} | 
[**getPictogramByIdWithLocales**](PictogramsApi.md#getpictogrambyidwithlocales) | **GET** /pictograms/{idPictogram}/languages/{languages} | 
[**getPictogramFileById**](PictogramsApi.md#getpictogramfilebyid) | **GET** /pictograms/{idPictogram} | 
[**getPictogramsBySynset**](PictogramsApi.md#getpictogramsbysynset) | **GET** /pictograms/{language}/wordnet/{wordnet}/id/{synset} | 
[**searchPictograms**](PictogramsApi.md#searchpictograms) | **GET** /pictograms/{language}/search/{searchText} | 


# **bestSearchPictograms**
> BuiltList<Pictogram> bestSearchPictograms(language, searchText)



Obtain best pictograms based on the searchText. The pictogram url can be generated based on pictogram id value and the desired resolution (300px, 500px or 2500px). There are some variations available for each pictogram using filename parameters (see below). You can see them in use and some more (available using API endpoint *GET /pictograms/{idPictogram}*) at https://arasaac.org/pictograms/en/2349  **Filename parameters** - *action* for verbal tense (*past*, *future*) - *hair* for hair color (brown *A65E26*, blonde *FDD700*, red *ED4120*, black *020100*, gray *EFEFEF*, darkGray *AAABAB*, darkBrown *6A2703*) - *skin* for skin color (white *F5E5DE*, black *A65C17*, assian *F4ECAD*, mulatto *E3AB72*, aztec *CF9D7C*) - *plural* - *nocolor*  **Examples** - https://static.arasaac.org/pictograms/2349/2349_2500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_300.png - https://static.arasaac.org/pictograms/2349/2349_nocolor_action-past_500.png - https://static.arasaac.org/pictograms/2349/2349_plural_nocolor_500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_hair-FDD700_500.png - https://static.arasaac.org/pictograms/2349/2349_action-future_hair-020100_skin-A65C17_500.png

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.
final String searchText = searchText_example; // String | Keywords for searches. By default, it makes an OR search on all the specified keywords. In case you would like to perform an exact phrase search (logical AND), you can do so by specifying double quotes in the search text. Prefixing a search keyword with – (minus sign) excludes all the documents that contain the negated term.

try {
    final response = api.bestSearchPictograms(language, searchText);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->bestSearchPictograms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 
 **searchText** | **String**| Keywords for searches. By default, it makes an OR search on all the specified keywords. In case you would like to perform an exact phrase search (logical AND), you can do so by specifying double quotes in the search text. Prefixing a search keyword with – (minus sign) excludes all the documents that contain the negated term. | 

### Return type

[**BuiltList&lt;Pictogram&gt;**](Pictogram.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllPictograms**
> getAllPictograms(language)



Obtain all pictograms data. The pictogram image url is composed based on the id field and the required resolution (300px, 500px or 2500px). For example, for pictogram with id 2350 and resolution 2500px would be https://static.arasaac.org/pictograms/2340/2340_2500.png

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.

try {
    api.getAllPictograms(language);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->getAllPictograms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastPictograms**
> BuiltList<Pictogram> getLastPictograms(language, numItems)



Obtain last modified or publish pictograms.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.
final int numItems = 56; // int | Number of items

try {
    final response = api.getLastPictograms(language, numItems);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->getLastPictograms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 
 **numItems** | **int**| Number of items | 

### Return type

[**BuiltList&lt;Pictogram&gt;**](Pictogram.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNewPictograms**
> BuiltList<Pictogram> getNewPictograms(language, days)



Obtain pictograms created or updated in the last days.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.
final int days = 56; // int | Material identifier

try {
    final response = api.getNewPictograms(language, days);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->getNewPictograms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 
 **days** | **int**| Material identifier | [default to 30]

### Return type

[**BuiltList&lt;Pictogram&gt;**](Pictogram.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPictogramById**
> getPictogramById(language, idPictogram)



Obtain pictogram data based on its key (idPictogram). The pictogram image url can be generated based on pictogram key value and the desired resolution (300px, 500px or 2500px). For example https://static.arasaac.org/pictograms/2340/2340_2500.png for pictogram with key 2350 and resolution 2500px.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.
final int idPictogram = 56; // int | Pictogram identifier

try {
    api.getPictogramById(language, idPictogram);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->getPictogramById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 
 **idPictogram** | **int**| Pictogram identifier | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPictogramByIdWithLocales**
> getPictogramByIdWithLocales(idPictogram, languages)



Obtain pictogram data based on its key (idPictogram) for several languages. The pictogram image url can be generated based on pictogram key value and the desired resolution (300px, 500px or 2500px). For example https://static.arasaac.org/pictograms/2340/2340_2500.png for pictogram with key 2350 and resolution 2500px.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final int idPictogram = 56; // int | Pictogram identifier
final BuiltList<Locales> languages = ; // BuiltList<Locales> | Languages than we currently use for pictograms searches.

try {
    api.getPictogramByIdWithLocales(idPictogram, languages);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->getPictogramByIdWithLocales: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPictogram** | **int**| Pictogram identifier | 
 **languages** | [**BuiltList&lt;Locales&gt;**](Locales.md)| Languages than we currently use for pictograms searches. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPictogramFileById**
> Uint8List getPictogramFileById(idPictogram, plural, color, backgroundColor, action, resolution, skin, hair, url, download, identifier, identifierPosition)



Obtain pictogram image file in png format based on its key. Pictogram can be customized with color, resolution, plural...

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final int idPictogram = 56; // int | Pictogram identifier
final bool plural = true; // bool | Pictogram in singular or with plural symbol. It should only be applied to pictograms that represent a noun.
final bool color = true; // bool | Pictogram in color (default value) or in black and white.
final String backgroundColor = backgroundColor_example; // String | Hexadecimal value to set the background color of the pictogram. The pictograms are transparent by default (value 'none').
final String action = action_example; // String | Add an extra symbol for indicating a past or future status. It should only be applied to pictograms that represent an action or a verb.
final int resolution = 56; // int | Pictogram resolution. 500px by default.
final String skin = skin_example; // String | Usefull for pictograms with people. Customize its skin
final String hair = hair_example; // String | Usefull for pictograms with people. Customize its hair.
final bool url = true; // bool | Get pictogram url or binary data (default value)
final bool download = true; // bool | Defines if the pictogram response will be render in the browser or saved as a file (sets header Content Disposition as attachment). Only applies if url parameter is binary data.
final String identifier = identifier_example; // String | Classify the type of pictogram
final String identifierPosition = identifierPosition_example; // String | Identity position. Only applies if an identifier has been provided.

try {
    final response = api.getPictogramFileById(idPictogram, plural, color, backgroundColor, action, resolution, skin, hair, url, download, identifier, identifierPosition);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->getPictogramFileById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPictogram** | **int**| Pictogram identifier | 
 **plural** | **bool**| Pictogram in singular or with plural symbol. It should only be applied to pictograms that represent a noun. | [optional] 
 **color** | **bool**| Pictogram in color (default value) or in black and white. | [optional] 
 **backgroundColor** | **String**| Hexadecimal value to set the background color of the pictogram. The pictograms are transparent by default (value 'none'). | [optional] 
 **action** | **String**| Add an extra symbol for indicating a past or future status. It should only be applied to pictograms that represent an action or a verb. | [optional] 
 **resolution** | **int**| Pictogram resolution. 500px by default. | [optional] 
 **skin** | **String**| Usefull for pictograms with people. Customize its skin | [optional] 
 **hair** | **String**| Usefull for pictograms with people. Customize its hair. | [optional] 
 **url** | **bool**| Get pictogram url or binary data (default value) | [optional] 
 **download** | **bool**| Defines if the pictogram response will be render in the browser or saved as a file (sets header Content Disposition as attachment). Only applies if url parameter is binary data. | [optional] [default to false]
 **identifier** | **String**| Classify the type of pictogram | [optional] 
 **identifierPosition** | **String**| Identity position. Only applies if an identifier has been provided. | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPictogramsBySynset**
> BuiltList<Pictogram> getPictogramsBySynset(language, wordnet, synset)



Obtain a list of pictograms based on the Wordnet identifier (synset). Wordnet version must be provided.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.
final String wordnet = wordnet_example; // String | Wordnet version.
final String synset = synset_example; // String | Wordnet identifier (synset).

try {
    final response = api.getPictogramsBySynset(language, wordnet, synset);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->getPictogramsBySynset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 
 **wordnet** | **String**| Wordnet version. | 
 **synset** | **String**| Wordnet identifier (synset). | 

### Return type

[**BuiltList&lt;Pictogram&gt;**](Pictogram.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchPictograms**
> BuiltList<Pictogram> searchPictograms(language, searchText)



Obtain a list of pictograms based on the searchText. The pictogram url can be generated based on pictogram id value and the desired resolution (300px, 500px or 2500px). There are some variations available for each pictogram using filename parameters (see below). You can see them in use and some more (available using API endpoint *GET /pictograms/{idPictogram}*) at https://arasaac.org/pictograms/en/2349  **Filename parameters** - *action* for verbal tense (*past*, *future*) - *hair* for hair color (brown *A65E26*, blonde *FDD700*, red *ED4120*, black *020100*, gray *EFEFEF*, darkGray *AAABAB*, darkBrown *6A2703*) - *skin* for skin color (white *F5E5DE*, black *A65C17*, assian *F4ECAD*, mulatto *E3AB72*, aztec *CF9D7C*) - *plural* - *nocolor*  **Examples** - https://static.arasaac.org/pictograms/2349/2349_2500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_300.png - https://static.arasaac.org/pictograms/2349/2349_nocolor_action-past_500.png - https://static.arasaac.org/pictograms/2349/2349_plural_nocolor_500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_hair-FDD700_500.png - https://static.arasaac.org/pictograms/2349/2349_action-future_hair-020100_skin-A65C17_500.png

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getPictogramsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.
final String searchText = searchText_example; // String | Keywords for searches. By default, it makes an OR search on all the specified keywords. In case you would like to perform an exact phrase search (logical AND), you can do so by specifying double quotes in the search text. Prefixing a search keyword with – (minus sign) excludes all the documents that contain the negated term.

try {
    final response = api.searchPictograms(language, searchText);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PictogramsApi->searchPictograms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 
 **searchText** | **String**| Keywords for searches. By default, it makes an OR search on all the specified keywords. In case you would like to perform an exact phrase search (logical AND), you can do so by specifying double quotes in the search text. Prefixing a search keyword with – (minus sign) excludes all the documents that contain the negated term. | 

### Return type

[**BuiltList&lt;Pictogram&gt;**](Pictogram.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

