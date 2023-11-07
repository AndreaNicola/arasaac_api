# arasaac_api.api.MaterialsApi

## Load the API package
```dart
import 'package:arasaac_api/api.dart';
```

All URIs are relative to *https://api.arasaac.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLastMaterials**](MaterialsApi.md#getlastmaterials) | **GET** /materials/new/{numItems} | 
[**getMaterialById**](MaterialsApi.md#getmaterialbyid) | **GET** /materials/{id} | 
[**getNewMaterials**](MaterialsApi.md#getnewmaterials) | **GET** /materials/days/{days} | 
[**searchMaterials**](MaterialsApi.md#searchmaterials) | **GET** /materials/{language}/{searchText} | 


# **getLastMaterials**
> BuiltList<Material> getLastMaterials(numItems)



Obtain last modified or published materials.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getMaterialsApi();
final int numItems = 56; // int | Total number of materials requested. Minimum 1, maximum 100.

try {
    final response = api.getLastMaterials(numItems);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MaterialsApi->getLastMaterials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **numItems** | **int**| Total number of materials requested. Minimum 1, maximum 100. | [default to 30]

### Return type

[**BuiltList&lt;Material&gt;**](Material.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaterialById**
> GetMaterialResponse getMaterialById(id)



Obtain a material based on its key.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getMaterialsApi();
final int id = 56; // int | The material id

try {
    final response = api.getMaterialById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MaterialsApi->getMaterialById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The material id | 

### Return type

[**GetMaterialResponse**](GetMaterialResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNewMaterials**
> BuiltList<Material> getNewMaterials(days)



Obtain materials published in the last number of days.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getMaterialsApi();
final int days = 56; // int | Date range for materials published from the current date backwards. Minimum 0 days, maximum 50 days.

try {
    final response = api.getNewMaterials(days);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MaterialsApi->getNewMaterials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **int**| Date range for materials published from the current date backwards. Minimum 0 days, maximum 50 days. | [default to 30]

### Return type

[**BuiltList&lt;Material&gt;**](Material.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMaterials**
> BuiltList<Material> searchMaterials(language, searchText)



Obtain a list of materials based on the search text parameter. It will search in the title and description fields. Language is used for search optimization.

### Example
```dart
import 'package:arasaac_api/api.dart';

final api = ArasaacApi().getMaterialsApi();
final Locales language = ; // Locales | Languages than we currently use for pictograms searches.
final String searchText = searchText_example; // String | Keywords for searches. By default, it makes an OR search on all the specified keywords. In case you would like to perform an exact phrase search (logical AND), you can do so by specifying double quotes in the search text. Prefixing a search keyword with – (minus sign) excludes all the documents that contain the negated term.

try {
    final response = api.searchMaterials(language, searchText);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MaterialsApi->searchMaterials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**Locales**](.md)| Languages than we currently use for pictograms searches. | 
 **searchText** | **String**| Keywords for searches. By default, it makes an OR search on all the specified keywords. In case you would like to perform an exact phrase search (logical AND), you can do so by specifying double quotes in the search text. Prefixing a search keyword with – (minus sign) excludes all the documents that contain the negated term. | 

### Return type

[**BuiltList&lt;Material&gt;**](Material.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

