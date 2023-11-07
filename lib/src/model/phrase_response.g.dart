// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phrase_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PhraseResponse extends PhraseResponse {
  @override
  final String? msg;

  factory _$PhraseResponse([void Function(PhraseResponseBuilder)? updates]) =>
      (new PhraseResponseBuilder()..update(updates))._build();

  _$PhraseResponse._({this.msg}) : super._();

  @override
  PhraseResponse rebuild(void Function(PhraseResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhraseResponseBuilder toBuilder() =>
      new PhraseResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhraseResponse && msg == other.msg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PhraseResponse')..add('msg', msg))
        .toString();
  }
}

class PhraseResponseBuilder
    implements Builder<PhraseResponse, PhraseResponseBuilder> {
  _$PhraseResponse? _$v;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  PhraseResponseBuilder() {
    PhraseResponse._defaults(this);
  }

  PhraseResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhraseResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhraseResponse;
  }

  @override
  void update(void Function(PhraseResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhraseResponse build() => _build();

  _$PhraseResponse _build() {
    final _$result = _$v ?? new _$PhraseResponse._(msg: msg);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
