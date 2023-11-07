//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_material_response.g.dart';

/// GetMaterialResponse
///
/// Properties:
/// * [material] 
@BuiltValue()
abstract class GetMaterialResponse implements Built<GetMaterialResponse, GetMaterialResponseBuilder> {
  @BuiltValueField(wireName: r'material')
  JsonObject? get material;

  GetMaterialResponse._();

  factory GetMaterialResponse([void updates(GetMaterialResponseBuilder b)]) = _$GetMaterialResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMaterialResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMaterialResponse> get serializer => _$GetMaterialResponseSerializer();
}

class _$GetMaterialResponseSerializer implements PrimitiveSerializer<GetMaterialResponse> {
  @override
  final Iterable<Type> types = const [GetMaterialResponse, _$GetMaterialResponse];

  @override
  final String wireName = r'GetMaterialResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMaterialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.material != null) {
      yield r'material';
      yield serializers.serialize(
        object.material,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetMaterialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMaterialResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'material':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.material = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetMaterialResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMaterialResponseBuilder();
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

