//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'phrase_response.g.dart';

/// PhraseResponse
///
/// Properties:
/// * [msg] 
@BuiltValue()
abstract class PhraseResponse implements Built<PhraseResponse, PhraseResponseBuilder> {
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  PhraseResponse._();

  factory PhraseResponse([void updates(PhraseResponseBuilder b)]) = _$PhraseResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PhraseResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PhraseResponse> get serializer => _$PhraseResponseSerializer();
}

class _$PhraseResponseSerializer implements PrimitiveSerializer<PhraseResponse> {
  @override
  final Iterable<Type> types = const [PhraseResponse, _$PhraseResponse];

  @override
  final String wireName = r'PhraseResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PhraseResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.msg != null) {
      yield r'msg';
      yield serializers.serialize(
        object.msg,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PhraseResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PhraseResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'msg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.msg = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PhraseResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PhraseResponseBuilder();
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

