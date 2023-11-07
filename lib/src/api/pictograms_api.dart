//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:arasaac_api/src/api_util.dart';
import 'package:arasaac_api/src/model/error_response.dart';
import 'package:arasaac_api/src/model/locales.dart';
import 'package:arasaac_api/src/model/pictogram.dart';
import 'package:built_collection/built_collection.dart';

class PictogramsApi {

  final Dio _dio;

  final Serializers _serializers;

  const PictogramsApi(this._dio, this._serializers);

  /// bestSearchPictograms
  /// Obtain best pictograms based on the searchText. The pictogram url can be generated based on pictogram id value and the desired resolution (300px, 500px or 2500px). There are some variations available for each pictogram using filename parameters (see below). You can see them in use and some more (available using API endpoint *GET /pictograms/{idPictogram}*) at https://arasaac.org/pictograms/en/2349  **Filename parameters** - *action* for verbal tense (*past*, *future*) - *hair* for hair color (brown *A65E26*, blonde *FDD700*, red *ED4120*, black *020100*, gray *EFEFEF*, darkGray *AAABAB*, darkBrown *6A2703*) - *skin* for skin color (white *F5E5DE*, black *A65C17*, assian *F4ECAD*, mulatto *E3AB72*, aztec *CF9D7C*) - *plural* - *nocolor*  **Examples** - https://static.arasaac.org/pictograms/2349/2349_2500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_300.png - https://static.arasaac.org/pictograms/2349/2349_nocolor_action-past_500.png - https://static.arasaac.org/pictograms/2349/2349_plural_nocolor_500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_hair-FDD700_500.png - https://static.arasaac.org/pictograms/2349/2349_action-future_hair-020100_skin-A65C17_500.png
  ///
  /// Parameters:
  /// * [language] - Languages than we currently use for pictograms searches.
  /// * [searchText] - Keywords for searches. By default, it makes an OR search on all the specified keywords. In case you would like to perform an exact phrase search (logical AND), you can do so by specifying double quotes in the search text. Prefixing a search keyword with – (minus sign) excludes all the documents that contain the negated term.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Pictogram>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Pictogram>>> bestSearchPictograms({ 
    required Locales language,
    required String searchText,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/{language}/bestsearch/{searchText}'.replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(Locales)).toString()).replaceAll('{' r'searchText' '}', encodeQueryParameter(_serializers, searchText, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Pictogram>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(Pictogram)]),
      ) as BuiltList<Pictogram>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Pictogram>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// getAllPictograms
  /// Obtain all pictograms data. The pictogram image url is composed based on the id field and the required resolution (300px, 500px or 2500px). For example, for pictogram with id 2350 and resolution 2500px would be https://static.arasaac.org/pictograms/2340/2340_2500.png
  ///
  /// Parameters:
  /// * [language] - Languages than we currently use for pictograms searches.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> getAllPictograms({ 
    required Locales language,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/all/{language}'.replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(Locales)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// getLastPictograms
  /// Obtain last modified or publish pictograms.
  ///
  /// Parameters:
  /// * [language] - Languages than we currently use for pictograms searches.
  /// * [numItems] - Number of items
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Pictogram>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Pictogram>>> getLastPictograms({ 
    required Locales language,
    required int numItems,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/{language}/new/{numItems}'.replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(Locales)).toString()).replaceAll('{' r'numItems' '}', encodeQueryParameter(_serializers, numItems, const FullType(int)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Pictogram>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(Pictogram)]),
      ) as BuiltList<Pictogram>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Pictogram>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// getNewPictograms
  /// Obtain pictograms created or updated in the last days.
  ///
  /// Parameters:
  /// * [language] - Languages than we currently use for pictograms searches.
  /// * [days] - Material identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Pictogram>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Pictogram>>> getNewPictograms({ 
    required Locales language,
    required int days,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/{language}/days/{days}'.replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(Locales)).toString()).replaceAll('{' r'days' '}', encodeQueryParameter(_serializers, days, const FullType(int)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Pictogram>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(Pictogram)]),
      ) as BuiltList<Pictogram>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Pictogram>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// getPictogramById
  /// Obtain pictogram data based on its key (idPictogram). The pictogram image url can be generated based on pictogram key value and the desired resolution (300px, 500px or 2500px). For example https://static.arasaac.org/pictograms/2340/2340_2500.png for pictogram with key 2350 and resolution 2500px.
  ///
  /// Parameters:
  /// * [language] - Languages than we currently use for pictograms searches.
  /// * [idPictogram] - Pictogram identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> getPictogramById({ 
    required Locales language,
    required int idPictogram,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/{language}/{idPictogram}'.replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(Locales)).toString()).replaceAll('{' r'idPictogram' '}', encodeQueryParameter(_serializers, idPictogram, const FullType(int)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// getPictogramByIdWithLocales
  /// Obtain pictogram data based on its key (idPictogram) for several languages. The pictogram image url can be generated based on pictogram key value and the desired resolution (300px, 500px or 2500px). For example https://static.arasaac.org/pictograms/2340/2340_2500.png for pictogram with key 2350 and resolution 2500px.
  ///
  /// Parameters:
  /// * [idPictogram] - Pictogram identifier
  /// * [languages] - Languages than we currently use for pictograms searches.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> getPictogramByIdWithLocales({ 
    required int idPictogram,
    required BuiltList<Locales> languages,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/{idPictogram}/languages/{languages}'.replaceAll('{' r'idPictogram' '}', encodeQueryParameter(_serializers, idPictogram, const FullType(int)).toString()).replaceAll('{' r'languages' '}', encodeCollectionQueryParameter<Locales>(_serializers, languages, const FullType(BuiltList, [FullType(Locales)]), format: ListFormat.csv,).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// getPictogramFileById
  /// Obtain pictogram image file in png format based on its key. Pictogram can be customized with color, resolution, plural...
  ///
  /// Parameters:
  /// * [idPictogram] - Pictogram identifier
  /// * [plural] - Pictogram in singular or with plural symbol. It should only be applied to pictograms that represent a noun.
  /// * [color] - Pictogram in color (default value) or in black and white.
  /// * [backgroundColor] - Hexadecimal value to set the background color of the pictogram. The pictograms are transparent by default (value 'none').
  /// * [action] - Add an extra symbol for indicating a past or future status. It should only be applied to pictograms that represent an action or a verb.
  /// * [resolution] - Pictogram resolution. 500px by default.
  /// * [skin] - Usefull for pictograms with people. Customize its skin
  /// * [hair] - Usefull for pictograms with people. Customize its hair.
  /// * [url] - Get pictogram url or binary data (default value)
  /// * [download] - Defines if the pictogram response will be render in the browser or saved as a file (sets header Content Disposition as attachment). Only applies if url parameter is binary data.
  /// * [identifier] - Classify the type of pictogram
  /// * [identifierPosition] - Identity position. Only applies if an identifier has been provided.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getPictogramFileById({ 
    required int idPictogram,
    bool? plural,
    bool? color,
    String? backgroundColor,
    String? action,
    int? resolution,
    String? skin,
    String? hair,
    bool? url,
    bool? download = false,
    String? identifier,
    String? identifierPosition,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/{idPictogram}'.replaceAll('{' r'idPictogram' '}', encodeQueryParameter(_serializers, idPictogram, const FullType(int)).toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (plural != null) r'plural': encodeQueryParameter(_serializers, plural, const FullType(bool)),
      if (color != null) r'color': encodeQueryParameter(_serializers, color, const FullType(bool)),
      if (backgroundColor != null) r'backgroundColor': encodeQueryParameter(_serializers, backgroundColor, const FullType(String)),
      if (action != null) r'action': encodeQueryParameter(_serializers, action, const FullType(String)),
      if (resolution != null) r'resolution': encodeQueryParameter(_serializers, resolution, const FullType(int)),
      if (skin != null) r'skin': encodeQueryParameter(_serializers, skin, const FullType(String)),
      if (hair != null) r'hair': encodeQueryParameter(_serializers, hair, const FullType(String)),
      if (url != null) r'url': encodeQueryParameter(_serializers, url, const FullType(bool)),
      if (download != null) r'download': encodeQueryParameter(_serializers, download, const FullType(bool)),
      if (identifier != null) r'identifier': encodeQueryParameter(_serializers, identifier, const FullType(String)),
      if (identifierPosition != null) r'identifierPosition': encodeQueryParameter(_serializers, identifierPosition, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// getPictogramsBySynset
  /// Obtain a list of pictograms based on the Wordnet identifier (synset). Wordnet version must be provided.
  ///
  /// Parameters:
  /// * [language] - Languages than we currently use for pictograms searches.
  /// * [wordnet] - Wordnet version.
  /// * [synset] - Wordnet identifier (synset).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Pictogram>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Pictogram>>> getPictogramsBySynset({ 
    required Locales language,
    required String wordnet,
    required String synset,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/{language}/wordnet/{wordnet}/id/{synset}'.replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(Locales)).toString()).replaceAll('{' r'wordnet' '}', encodeQueryParameter(_serializers, wordnet, const FullType(String)).toString()).replaceAll('{' r'synset' '}', encodeQueryParameter(_serializers, synset, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Pictogram>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(Pictogram)]),
      ) as BuiltList<Pictogram>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Pictogram>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// searchPictograms
  /// Obtain a list of pictograms based on the searchText. The pictogram url can be generated based on pictogram id value and the desired resolution (300px, 500px or 2500px). There are some variations available for each pictogram using filename parameters (see below). You can see them in use and some more (available using API endpoint *GET /pictograms/{idPictogram}*) at https://arasaac.org/pictograms/en/2349  **Filename parameters** - *action* for verbal tense (*past*, *future*) - *hair* for hair color (brown *A65E26*, blonde *FDD700*, red *ED4120*, black *020100*, gray *EFEFEF*, darkGray *AAABAB*, darkBrown *6A2703*) - *skin* for skin color (white *F5E5DE*, black *A65C17*, assian *F4ECAD*, mulatto *E3AB72*, aztec *CF9D7C*) - *plural* - *nocolor*  **Examples** - https://static.arasaac.org/pictograms/2349/2349_2500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_300.png - https://static.arasaac.org/pictograms/2349/2349_nocolor_action-past_500.png - https://static.arasaac.org/pictograms/2349/2349_plural_nocolor_500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_hair-FDD700_500.png - https://static.arasaac.org/pictograms/2349/2349_action-future_hair-020100_skin-A65C17_500.png
  ///
  /// Parameters:
  /// * [language] - Languages than we currently use for pictograms searches.
  /// * [searchText] - Keywords for searches. By default, it makes an OR search on all the specified keywords. In case you would like to perform an exact phrase search (logical AND), you can do so by specifying double quotes in the search text. Prefixing a search keyword with – (minus sign) excludes all the documents that contain the negated term.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Pictogram>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Pictogram>>> searchPictograms({ 
    required Locales language,
    required String searchText,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pictograms/{language}/search/{searchText}'.replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(Locales)).toString()).replaceAll('{' r'searchText' '}', encodeQueryParameter(_serializers, searchText, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Pictogram>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(Pictogram)]),
      ) as BuiltList<Pictogram>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Pictogram>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
