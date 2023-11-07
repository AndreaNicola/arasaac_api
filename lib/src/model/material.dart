//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'material.g.dart';

/// Material
///
/// Properties:
/// * [id] 
/// * [activity] 
/// * [area] 
/// * [authors] 
/// * [created] 
/// * [desc] 
/// * [downloads] 
/// * [file] 
/// * [files] 
/// * [idMaterial] 
/// * [screenshots] 
/// * [lang] 
/// * [language] 
/// * [lastUpdate] 
/// * [score] 
/// * [status] 
/// * [title] 
/// * [translations] 
@BuiltValue()
abstract class Material implements Built<Material, MaterialBuilder> {
  @BuiltValueField(wireName: r'_id')
  String? get id;

  @BuiltValueField(wireName: r'activity')
  BuiltList<int>? get activity;

  @BuiltValueField(wireName: r'area')
  BuiltList<int>? get area;

  @BuiltValueField(wireName: r'authors')
  BuiltList<JsonObject> get authors;

  @BuiltValueField(wireName: r'created')
  DateTime? get created;

  @BuiltValueField(wireName: r'desc')
  String get desc;

  @BuiltValueField(wireName: r'downloads')
  num? get downloads;

  @BuiltValueField(wireName: r'file')
  JsonObject? get file;

  @BuiltValueField(wireName: r'files')
  JsonObject get files;

  @BuiltValueField(wireName: r'idMaterial')
  int? get idMaterial;

  @BuiltValueField(wireName: r'screenshots')
  JsonObject? get screenshots;

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'lastUpdate')
  DateTime? get lastUpdate;

  @BuiltValueField(wireName: r'score')
  num? get score;

  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'translations')
  BuiltList<JsonObject>? get translations;

  Material._();

  factory Material([void updates(MaterialBuilder b)]) = _$Material;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MaterialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Material> get serializer => _$MaterialSerializer();
}

class _$MaterialSerializer implements PrimitiveSerializer<Material> {
  @override
  final Iterable<Type> types = const [Material, _$Material];

  @override
  final String wireName = r'Material';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Material object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'_id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.activity != null) {
      yield r'activity';
      yield serializers.serialize(
        object.activity,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    yield r'authors';
    yield serializers.serialize(
      object.authors,
      specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
    );
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'desc';
    yield serializers.serialize(
      object.desc,
      specifiedType: const FullType(String),
    );
    if (object.downloads != null) {
      yield r'downloads';
      yield serializers.serialize(
        object.downloads,
        specifiedType: const FullType(num),
      );
    }
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(JsonObject),
      );
    }
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(JsonObject),
    );
    if (object.idMaterial != null) {
      yield r'idMaterial';
      yield serializers.serialize(
        object.idMaterial,
        specifiedType: const FullType(int),
      );
    }
    if (object.screenshots != null) {
      yield r'screenshots';
      yield serializers.serialize(
        object.screenshots,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastUpdate != null) {
      yield r'lastUpdate';
      yield serializers.serialize(
        object.lastUpdate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(num),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.translations != null) {
      yield r'translations';
      yield serializers.serialize(
        object.translations,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Material object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MaterialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'activity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.activity.replace(valueDes);
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.area.replace(valueDes);
          break;
        case r'authors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.authors.replace(valueDes);
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.created = valueDes;
          break;
        case r'desc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.desc = valueDes;
          break;
        case r'downloads':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.downloads = valueDes;
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.file = valueDes;
          break;
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.files = valueDes;
          break;
        case r'idMaterial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idMaterial = valueDes;
          break;
        case r'screenshots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.screenshots = valueDes;
          break;
        case r'lang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lang = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'lastUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdate = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.score = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.status = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'translations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.translations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Material deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaterialBuilder();
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

