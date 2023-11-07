// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keywords_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeywordsResponse extends KeywordsResponse {
  @override
  final Locales? locale;
  @override
  final BuiltList<String>? words;

  factory _$KeywordsResponse(
          [void Function(KeywordsResponseBuilder)? updates]) =>
      (new KeywordsResponseBuilder()..update(updates))._build();

  _$KeywordsResponse._({this.locale, this.words}) : super._();

  @override
  KeywordsResponse rebuild(void Function(KeywordsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeywordsResponseBuilder toBuilder() =>
      new KeywordsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeywordsResponse &&
        locale == other.locale &&
        words == other.words;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, words.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeywordsResponse')
          ..add('locale', locale)
          ..add('words', words))
        .toString();
  }
}

class KeywordsResponseBuilder
    implements Builder<KeywordsResponse, KeywordsResponseBuilder> {
  _$KeywordsResponse? _$v;

  Locales? _locale;
  Locales? get locale => _$this._locale;
  set locale(Locales? locale) => _$this._locale = locale;

  ListBuilder<String>? _words;
  ListBuilder<String> get words => _$this._words ??= new ListBuilder<String>();
  set words(ListBuilder<String>? words) => _$this._words = words;

  KeywordsResponseBuilder() {
    KeywordsResponse._defaults(this);
  }

  KeywordsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locale = $v.locale;
      _words = $v.words?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeywordsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KeywordsResponse;
  }

  @override
  void update(void Function(KeywordsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeywordsResponse build() => _build();

  _$KeywordsResponse _build() {
    _$KeywordsResponse _$result;
    try {
      _$result = _$v ??
          new _$KeywordsResponse._(locale: locale, words: _words?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'words';
        _words?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'KeywordsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
