// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserProfileResponseRoleEnum _$userProfileResponseRoleEnum_admin =
    const UserProfileResponseRoleEnum._('admin');
const UserProfileResponseRoleEnum _$userProfileResponseRoleEnum_translator =
    const UserProfileResponseRoleEnum._('translator');
const UserProfileResponseRoleEnum _$userProfileResponseRoleEnum_user =
    const UserProfileResponseRoleEnum._('user');

UserProfileResponseRoleEnum _$userProfileResponseRoleEnumValueOf(String name) {
  switch (name) {
    case 'admin':
      return _$userProfileResponseRoleEnum_admin;
    case 'translator':
      return _$userProfileResponseRoleEnum_translator;
    case 'user':
      return _$userProfileResponseRoleEnum_user;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UserProfileResponseRoleEnum>
    _$userProfileResponseRoleEnumValues = new BuiltSet<
        UserProfileResponseRoleEnum>(const <UserProfileResponseRoleEnum>[
  _$userProfileResponseRoleEnum_admin,
  _$userProfileResponseRoleEnum_translator,
  _$userProfileResponseRoleEnum_user,
]);

Serializer<UserProfileResponseRoleEnum>
    _$userProfileResponseRoleEnumSerializer =
    new _$UserProfileResponseRoleEnumSerializer();

class _$UserProfileResponseRoleEnumSerializer
    implements PrimitiveSerializer<UserProfileResponseRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'admin': 'admin',
    'translator': 'translator',
    'user': 'user',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'admin': 'admin',
    'translator': 'translator',
    'user': 'user',
  };

  @override
  final Iterable<Type> types = const <Type>[UserProfileResponseRoleEnum];
  @override
  final String wireName = 'UserProfileResponseRoleEnum';

  @override
  Object serialize(Serializers serializers, UserProfileResponseRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserProfileResponseRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserProfileResponseRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserProfileResponse extends UserProfileResponse {
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? lastlogin;
  @override
  final Locales? locale;
  @override
  final UserProfileResponseRoleEnum? role;
  @override
  final JsonObject? materials;
  @override
  final JsonObject? pictos;
  @override
  final JsonObject? provider;

  factory _$UserProfileResponse(
          [void Function(UserProfileResponseBuilder)? updates]) =>
      (new UserProfileResponseBuilder()..update(updates))._build();

  _$UserProfileResponse._(
      {this.email,
      this.name,
      this.username,
      this.lastlogin,
      this.locale,
      this.role,
      this.materials,
      this.pictos,
      this.provider})
      : super._();

  @override
  UserProfileResponse rebuild(
          void Function(UserProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileResponseBuilder toBuilder() =>
      new UserProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileResponse &&
        email == other.email &&
        name == other.name &&
        username == other.username &&
        lastlogin == other.lastlogin &&
        locale == other.locale &&
        role == other.role &&
        materials == other.materials &&
        pictos == other.pictos &&
        provider == other.provider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, lastlogin.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, materials.hashCode);
    _$hash = $jc(_$hash, pictos.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileResponse')
          ..add('email', email)
          ..add('name', name)
          ..add('username', username)
          ..add('lastlogin', lastlogin)
          ..add('locale', locale)
          ..add('role', role)
          ..add('materials', materials)
          ..add('pictos', pictos)
          ..add('provider', provider))
        .toString();
  }
}

class UserProfileResponseBuilder
    implements Builder<UserProfileResponse, UserProfileResponseBuilder> {
  _$UserProfileResponse? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _lastlogin;
  String? get lastlogin => _$this._lastlogin;
  set lastlogin(String? lastlogin) => _$this._lastlogin = lastlogin;

  Locales? _locale;
  Locales? get locale => _$this._locale;
  set locale(Locales? locale) => _$this._locale = locale;

  UserProfileResponseRoleEnum? _role;
  UserProfileResponseRoleEnum? get role => _$this._role;
  set role(UserProfileResponseRoleEnum? role) => _$this._role = role;

  JsonObject? _materials;
  JsonObject? get materials => _$this._materials;
  set materials(JsonObject? materials) => _$this._materials = materials;

  JsonObject? _pictos;
  JsonObject? get pictos => _$this._pictos;
  set pictos(JsonObject? pictos) => _$this._pictos = pictos;

  JsonObject? _provider;
  JsonObject? get provider => _$this._provider;
  set provider(JsonObject? provider) => _$this._provider = provider;

  UserProfileResponseBuilder() {
    UserProfileResponse._defaults(this);
  }

  UserProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _username = $v.username;
      _lastlogin = $v.lastlogin;
      _locale = $v.locale;
      _role = $v.role;
      _materials = $v.materials;
      _pictos = $v.pictos;
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfileResponse;
  }

  @override
  void update(void Function(UserProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileResponse build() => _build();

  _$UserProfileResponse _build() {
    final _$result = _$v ??
        new _$UserProfileResponse._(
            email: email,
            name: name,
            username: username,
            lastlogin: lastlogin,
            locale: locale,
            role: role,
            materials: materials,
            pictos: pictos,
            provider: provider);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
