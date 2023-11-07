// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_material_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMaterialResponse extends GetMaterialResponse {
  @override
  final JsonObject? material;

  factory _$GetMaterialResponse(
          [void Function(GetMaterialResponseBuilder)? updates]) =>
      (new GetMaterialResponseBuilder()..update(updates))._build();

  _$GetMaterialResponse._({this.material}) : super._();

  @override
  GetMaterialResponse rebuild(
          void Function(GetMaterialResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMaterialResponseBuilder toBuilder() =>
      new GetMaterialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMaterialResponse && material == other.material;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, material.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetMaterialResponse')
          ..add('material', material))
        .toString();
  }
}

class GetMaterialResponseBuilder
    implements Builder<GetMaterialResponse, GetMaterialResponseBuilder> {
  _$GetMaterialResponse? _$v;

  JsonObject? _material;
  JsonObject? get material => _$this._material;
  set material(JsonObject? material) => _$this._material = material;

  GetMaterialResponseBuilder() {
    GetMaterialResponse._defaults(this);
  }

  GetMaterialResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _material = $v.material;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMaterialResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMaterialResponse;
  }

  @override
  void update(void Function(GetMaterialResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMaterialResponse build() => _build();

  _$GetMaterialResponse _build() {
    final _$result = _$v ?? new _$GetMaterialResponse._(material: material);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
