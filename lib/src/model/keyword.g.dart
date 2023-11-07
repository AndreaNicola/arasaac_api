// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Keyword extends Keyword {
  @override
  final int? idKeyword;
  @override
  final String? keyword;
  @override
  final String? plural;
  @override
  final String? idLocution;
  @override
  final String? meaning;
  @override
  final int? type;
  @override
  final int? lse;

  factory _$Keyword([void Function(KeywordBuilder)? updates]) =>
      (new KeywordBuilder()..update(updates))._build();

  _$Keyword._(
      {this.idKeyword,
      this.keyword,
      this.plural,
      this.idLocution,
      this.meaning,
      this.type,
      this.lse})
      : super._();

  @override
  Keyword rebuild(void Function(KeywordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeywordBuilder toBuilder() => new KeywordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Keyword &&
        idKeyword == other.idKeyword &&
        keyword == other.keyword &&
        plural == other.plural &&
        idLocution == other.idLocution &&
        meaning == other.meaning &&
        type == other.type &&
        lse == other.lse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idKeyword.hashCode);
    _$hash = $jc(_$hash, keyword.hashCode);
    _$hash = $jc(_$hash, plural.hashCode);
    _$hash = $jc(_$hash, idLocution.hashCode);
    _$hash = $jc(_$hash, meaning.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, lse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Keyword')
          ..add('idKeyword', idKeyword)
          ..add('keyword', keyword)
          ..add('plural', plural)
          ..add('idLocution', idLocution)
          ..add('meaning', meaning)
          ..add('type', type)
          ..add('lse', lse))
        .toString();
  }
}

class KeywordBuilder implements Builder<Keyword, KeywordBuilder> {
  _$Keyword? _$v;

  int? _idKeyword;
  int? get idKeyword => _$this._idKeyword;
  set idKeyword(int? idKeyword) => _$this._idKeyword = idKeyword;

  String? _keyword;
  String? get keyword => _$this._keyword;
  set keyword(String? keyword) => _$this._keyword = keyword;

  String? _plural;
  String? get plural => _$this._plural;
  set plural(String? plural) => _$this._plural = plural;

  String? _idLocution;
  String? get idLocution => _$this._idLocution;
  set idLocution(String? idLocution) => _$this._idLocution = idLocution;

  String? _meaning;
  String? get meaning => _$this._meaning;
  set meaning(String? meaning) => _$this._meaning = meaning;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  int? _lse;
  int? get lse => _$this._lse;
  set lse(int? lse) => _$this._lse = lse;

  KeywordBuilder() {
    Keyword._defaults(this);
  }

  KeywordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idKeyword = $v.idKeyword;
      _keyword = $v.keyword;
      _plural = $v.plural;
      _idLocution = $v.idLocution;
      _meaning = $v.meaning;
      _type = $v.type;
      _lse = $v.lse;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Keyword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Keyword;
  }

  @override
  void update(void Function(KeywordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Keyword build() => _build();

  _$Keyword _build() {
    final _$result = _$v ??
        new _$Keyword._(
            idKeyword: idKeyword,
            keyword: keyword,
            plural: plural,
            idLocution: idLocution,
            meaning: meaning,
            type: type,
            lse: lse);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
