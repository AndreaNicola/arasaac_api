//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:arasaac_api/src/model/locales.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keywords_response.g.dart';

/// KeywordsResponse
///
/// Properties:
/// * [locale] 
/// * [words] 
@BuiltValue()
abstract class KeywordsResponse implements Built<KeywordsResponse, KeywordsResponseBuilder> {
  @BuiltValueField(wireName: r'locale')
  Locales? get locale;
  // enum localeEnum {  an,  ar,  bg,  br,  ca,  cs,  de,  el,  en,  es,  et,  eu,  fa,  fr,  gl,  he,  hr,  hu,  it,  ko,  lt,  lv,  mk,  nl,  pl,  pt,  ro,  ru,  sk,  sq,  sv,  sr,  val,  uk,  zh,  };

  @BuiltValueField(wireName: r'words')
  BuiltList<String>? get words;

  KeywordsResponse._();

  factory KeywordsResponse([void updates(KeywordsResponseBuilder b)]) = _$KeywordsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeywordsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeywordsResponse> get serializer => _$KeywordsResponseSerializer();
}

class _$KeywordsResponseSerializer implements PrimitiveSerializer<KeywordsResponse> {
  @override
  final Iterable<Type> types = const [KeywordsResponse, _$KeywordsResponse];

  @override
  final String wireName = r'KeywordsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeywordsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType(Locales),
      );
    }
    if (object.words != null) {
      yield r'words';
      yield serializers.serialize(
        object.words,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeywordsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeywordsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Locales),
          ) as Locales;
          result.locale = valueDes;
          break;
        case r'words':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.words.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeywordsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeywordsResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

