//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keyword.g.dart';

/// Keyword
///
/// Properties:
/// * [idKeyword] 
/// * [keyword] 
/// * [plural] 
/// * [idLocution] 
/// * [meaning] 
/// * [type] 
/// * [lse] 
@BuiltValue()
abstract class Keyword implements Built<Keyword, KeywordBuilder> {
  @BuiltValueField(wireName: r'idKeyword')
  int? get idKeyword;

  @BuiltValueField(wireName: r'keyword')
  String? get keyword;

  @BuiltValueField(wireName: r'plural')
  String? get plural;

  @BuiltValueField(wireName: r'idLocution')
  String? get idLocution;

  @BuiltValueField(wireName: r'meaning')
  String? get meaning;

  @BuiltValueField(wireName: r'type')
  int? get type;

  @BuiltValueField(wireName: r'lse')
  int? get lse;

  Keyword._();

  factory Keyword([void updates(KeywordBuilder b)]) = _$Keyword;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeywordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Keyword> get serializer => _$KeywordSerializer();
}

class _$KeywordSerializer implements PrimitiveSerializer<Keyword> {
  @override
  final Iterable<Type> types = const [Keyword, _$Keyword];

  @override
  final String wireName = r'Keyword';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Keyword object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.idKeyword != null) {
      yield r'idKeyword';
      yield serializers.serialize(
        object.idKeyword,
        specifiedType: const FullType(int),
      );
    }
    if (object.keyword != null) {
      yield r'keyword';
      yield serializers.serialize(
        object.keyword,
        specifiedType: const FullType(String),
      );
    }
    if (object.plural != null) {
      yield r'plural';
      yield serializers.serialize(
        object.plural,
        specifiedType: const FullType(String),
      );
    }
    if (object.idLocution != null) {
      yield r'idLocution';
      yield serializers.serialize(
        object.idLocution,
        specifiedType: const FullType(String),
      );
    }
    if (object.meaning != null) {
      yield r'meaning';
      yield serializers.serialize(
        object.meaning,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(int),
      );
    }
    if (object.lse != null) {
      yield r'lse';
      yield serializers.serialize(
        object.lse,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Keyword object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeywordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'idKeyword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idKeyword = valueDes;
          break;
        case r'keyword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyword = valueDes;
          break;
        case r'plural':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plural = valueDes;
          break;
        case r'idLocution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idLocution = valueDes;
          break;
        case r'meaning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.meaning = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.type = valueDes;
          break;
        case r'lse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lse = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Keyword deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeywordBuilder();
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

