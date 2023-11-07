//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:arasaac_api/src/api_util.dart';
import 'package:arasaac_api/src/model/error_response.dart';
import 'package:arasaac_api/src/model/phrase_response.dart';
import 'package:built_collection/built_collection.dart';

class PhrasesApi {

  final Dio _dio;

  final Serializers _serializers;

  const PhrasesApi(this._dio, this._serializers);

  /// getFlex
  /// Get a phase in natural language based on pictogram keywords. It tries to convert sentences like *I + to eat + hamburger + yesterday* to  *I ate a hamburger yesterday*
  ///
  /// Parameters:
  /// * [language] - Languages than we currently support for natural language analysis.
  /// * [phrase] - Phrase to convert to natural language.
  /// * [tense] - Force the verb tense for natural language.
  /// * [idPictograms] - List of pictograms by id used in one sentence.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PhraseResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PhraseResponse>> getFlex({ 
    required String language,
    required String phrase,
    String? tense,
    BuiltList<int>? idPictograms,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/phrases/flex/{language}/{phrase}'.replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(String)).toString()).replaceAll('{' r'phrase' '}', encodeQueryParameter(_serializers, phrase, const FullType(String)).toString());
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

    final _queryParameters = <String, dynamic>{
      if (tense != null) r'tense': encodeQueryParameter(_serializers, tense, const FullType(String)),
      if (idPictograms != null) r'idPictograms': encodeCollectionQueryParameter<int>(_serializers, idPictograms, const FullType(BuiltList, [FullType(int)]), format: ListFormat.multi,),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PhraseResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PhraseResponse),
      ) as PhraseResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PhraseResponse>(
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

  /// postReport
  /// Send a report when converting a sentence to natural language does not work as expected
  ///
  /// Parameters:
  /// * [originalPhrase] - Phrase to convert to natural language.
  /// * [returnedPhrase] - Phrase returned from natural language processing.
  /// * [expectedPhrase] - Phrase expected from natural language processing.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PhraseResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PhraseResponse>> postReport({ 
    required String originalPhrase,
    required String returnedPhrase,
    String? expectedPhrase,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/phrases/report';
    final _options = Options(
      method: r'POST',
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
      r'originalPhrase': encodeQueryParameter(_serializers, originalPhrase, const FullType(String)),
      r'returnedPhrase': encodeQueryParameter(_serializers, returnedPhrase, const FullType(String)),
      if (expectedPhrase != null) r'expectedPhrase': encodeQueryParameter(_serializers, expectedPhrase, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PhraseResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PhraseResponse),
      ) as PhraseResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PhraseResponse>(
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
