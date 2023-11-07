//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:arasaac_api/src/model/keyword.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pictogram.g.dart';

/// Pictogram
///
/// Properties:
/// * [id] 
/// * [keywords] 
/// * [schematic] 
/// * [sex] 
/// * [violence] 
/// * [created] 
/// * [lastUpdated] 
/// * [downloads] 
/// * [categories] 
/// * [synsets] 
/// * [tags] 
/// * [desc] 
@BuiltValue()
abstract class Pictogram implements Built<Pictogram, PictogramBuilder> {
  @BuiltValueField(wireName: r'_id')
  int? get id;

  @BuiltValueField(wireName: r'keywords')
  BuiltList<Keyword>? get keywords;

  @BuiltValueField(wireName: r'schematic')
  bool? get schematic;

  @BuiltValueField(wireName: r'sex')
  bool? get sex;

  @BuiltValueField(wireName: r'violence')
  bool? get violence;

  @BuiltValueField(wireName: r'created')
  DateTime? get created;

  @BuiltValueField(wireName: r'lastUpdated')
  DateTime? get lastUpdated;

  @BuiltValueField(wireName: r'downloads')
  int? get downloads;

  @BuiltValueField(wireName: r'categories')
  BuiltList<String>? get categories;

  @BuiltValueField(wireName: r'synsets')
  BuiltList<String>? get synsets;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'desc')
  String? get desc;

  Pictogram._();

  factory Pictogram([void updates(PictogramBuilder b)]) = _$Pictogram;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PictogramBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Pictogram> get serializer => _$PictogramSerializer();
}

class _$PictogramSerializer implements PrimitiveSerializer<Pictogram> {
  @override
  final Iterable<Type> types = const [Pictogram, _$Pictogram];

  @override
  final String wireName = r'Pictogram';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Pictogram object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'_id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.keywords != null) {
      yield r'keywords';
      yield serializers.serialize(
        object.keywords,
        specifiedType: const FullType(BuiltList, [FullType(Keyword)]),
      );
    }
    if (object.schematic != null) {
      yield r'schematic';
      yield serializers.serialize(
        object.schematic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sex != null) {
      yield r'sex';
      yield serializers.serialize(
        object.sex,
        specifiedType: const FullType(bool),
      );
    }
    if (object.violence != null) {
      yield r'violence';
      yield serializers.serialize(
        object.violence,
        specifiedType: const FullType(bool),
      );
    }
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastUpdated != null) {
      yield r'lastUpdated';
      yield serializers.serialize(
        object.lastUpdated,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.downloads != null) {
      yield r'downloads';
      yield serializers.serialize(
        object.downloads,
        specifiedType: const FullType(int),
      );
    }
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.synsets != null) {
      yield r'synsets';
      yield serializers.serialize(
        object.synsets,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.desc != null) {
      yield r'desc';
      yield serializers.serialize(
        object.desc,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Pictogram object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PictogramBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Keyword)]),
          ) as BuiltList<Keyword>;
          result.keywords.replace(valueDes);
          break;
        case r'schematic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.schematic = valueDes;
          break;
        case r'sex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sex = valueDes;
          break;
        case r'violence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.violence = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.created = valueDes;
          break;
        case r'lastUpdated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdated = valueDes;
          break;
        case r'downloads':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.downloads = valueDes;
          break;
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.categories.replace(valueDes);
          break;
        case r'synsets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.synsets.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'desc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.desc = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Pictogram deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PictogramBuilder();
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

