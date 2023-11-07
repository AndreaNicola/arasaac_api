//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:arasaac_api/src/date_serializer.dart';
import 'package:arasaac_api/src/model/date.dart';

import 'package:arasaac_api/src/model/error_response.dart';
import 'package:arasaac_api/src/model/get_material_response.dart';
import 'package:arasaac_api/src/model/keyword.dart';
import 'package:arasaac_api/src/model/keywords_response.dart';
import 'package:arasaac_api/src/model/locales.dart';
import 'package:arasaac_api/src/model/material.dart';
import 'package:arasaac_api/src/model/phrase_response.dart';
import 'package:arasaac_api/src/model/pictogram.dart';
import 'package:arasaac_api/src/model/user_profile_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  ErrorResponse,
  GetMaterialResponse,
  Keyword,
  KeywordsResponse,
  Locales,
  Material,
  PhraseResponse,
  Pictogram,
  UserProfileResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Locales)]),
        () => ListBuilder<Locales>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Pictogram)]),
        () => ListBuilder<Pictogram>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Material)]),
        () => ListBuilder<Material>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
