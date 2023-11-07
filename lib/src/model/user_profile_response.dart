//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:arasaac_api/src/model/locales.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_profile_response.g.dart';

/// UserProfileResponse
///
/// Properties:
/// * [email] 
/// * [name] 
/// * [username] 
/// * [lastlogin] 
/// * [locale] 
/// * [role] 
/// * [materials] 
/// * [pictos] 
/// * [provider] 
@BuiltValue()
abstract class UserProfileResponse implements Built<UserProfileResponse, UserProfileResponseBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'lastlogin')
  String? get lastlogin;

  @BuiltValueField(wireName: r'locale')
  Locales? get locale;
  // enum localeEnum {  an,  ar,  bg,  br,  ca,  cs,  de,  el,  en,  es,  et,  eu,  fa,  fr,  gl,  he,  hr,  hu,  it,  ko,  lt,  lv,  mk,  nl,  pl,  pt,  ro,  ru,  sk,  sq,  sv,  sr,  val,  uk,  zh,  };

  @BuiltValueField(wireName: r'role')
  UserProfileResponseRoleEnum? get role;
  // enum roleEnum {  admin,  translator,  user,  };

  @BuiltValueField(wireName: r'materials')
  JsonObject? get materials;

  @BuiltValueField(wireName: r'pictos')
  JsonObject? get pictos;

  @BuiltValueField(wireName: r'provider')
  JsonObject? get provider;

  UserProfileResponse._();

  factory UserProfileResponse([void updates(UserProfileResponseBuilder b)]) = _$UserProfileResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserProfileResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserProfileResponse> get serializer => _$UserProfileResponseSerializer();
}

class _$UserProfileResponseSerializer implements PrimitiveSerializer<UserProfileResponse> {
  @override
  final Iterable<Type> types = const [UserProfileResponse, _$UserProfileResponse];

  @override
  final String wireName = r'UserProfileResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastlogin != null) {
      yield r'lastlogin';
      yield serializers.serialize(
        object.lastlogin,
        specifiedType: const FullType(String),
      );
    }
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType(Locales),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(UserProfileResponseRoleEnum),
      );
    }
    if (object.materials != null) {
      yield r'materials';
      yield serializers.serialize(
        object.materials,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.pictos != null) {
      yield r'pictos';
      yield serializers.serialize(
        object.pictos,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserProfileResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'lastlogin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastlogin = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Locales),
          ) as Locales;
          result.locale = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserProfileResponseRoleEnum),
          ) as UserProfileResponseRoleEnum;
          result.role = valueDes;
          break;
        case r'materials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.materials = valueDes;
          break;
        case r'pictos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.pictos = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.provider = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserProfileResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserProfileResponseBuilder();
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

class UserProfileResponseRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'admin')
  static const UserProfileResponseRoleEnum admin = _$userProfileResponseRoleEnum_admin;
  @BuiltValueEnumConst(wireName: r'translator')
  static const UserProfileResponseRoleEnum translator = _$userProfileResponseRoleEnum_translator;
  @BuiltValueEnumConst(wireName: r'user')
  static const UserProfileResponseRoleEnum user = _$userProfileResponseRoleEnum_user;

  static Serializer<UserProfileResponseRoleEnum> get serializer => _$userProfileResponseRoleEnumSerializer;

  const UserProfileResponseRoleEnum._(String name): super(name);

  static BuiltSet<UserProfileResponseRoleEnum> get values => _$userProfileResponseRoleEnumValues;
  static UserProfileResponseRoleEnum valueOf(String name) => _$userProfileResponseRoleEnumValueOf(name);
}

