// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pictogram.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pictogram extends Pictogram {
  @override
  final int? id;
  @override
  final BuiltList<Keyword>? keywords;
  @override
  final bool? schematic;
  @override
  final bool? sex;
  @override
  final bool? violence;
  @override
  final DateTime? created;
  @override
  final DateTime? lastUpdated;
  @override
  final int? downloads;
  @override
  final BuiltList<String>? categories;
  @override
  final BuiltList<String>? synsets;
  @override
  final BuiltList<String>? tags;
  @override
  final String? desc;

  factory _$Pictogram([void Function(PictogramBuilder)? updates]) =>
      (new PictogramBuilder()..update(updates))._build();

  _$Pictogram._(
      {this.id,
      this.keywords,
      this.schematic,
      this.sex,
      this.violence,
      this.created,
      this.lastUpdated,
      this.downloads,
      this.categories,
      this.synsets,
      this.tags,
      this.desc})
      : super._();

  @override
  Pictogram rebuild(void Function(PictogramBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PictogramBuilder toBuilder() => new PictogramBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pictogram &&
        id == other.id &&
        keywords == other.keywords &&
        schematic == other.schematic &&
        sex == other.sex &&
        violence == other.violence &&
        created == other.created &&
        lastUpdated == other.lastUpdated &&
        downloads == other.downloads &&
        categories == other.categories &&
        synsets == other.synsets &&
        tags == other.tags &&
        desc == other.desc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, keywords.hashCode);
    _$hash = $jc(_$hash, schematic.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, violence.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, downloads.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, synsets.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pictogram')
          ..add('id', id)
          ..add('keywords', keywords)
          ..add('schematic', schematic)
          ..add('sex', sex)
          ..add('violence', violence)
          ..add('created', created)
          ..add('lastUpdated', lastUpdated)
          ..add('downloads', downloads)
          ..add('categories', categories)
          ..add('synsets', synsets)
          ..add('tags', tags)
          ..add('desc', desc))
        .toString();
  }
}

class PictogramBuilder implements Builder<Pictogram, PictogramBuilder> {
  _$Pictogram? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<Keyword>? _keywords;
  ListBuilder<Keyword> get keywords =>
      _$this._keywords ??= new ListBuilder<Keyword>();
  set keywords(ListBuilder<Keyword>? keywords) => _$this._keywords = keywords;

  bool? _schematic;
  bool? get schematic => _$this._schematic;
  set schematic(bool? schematic) => _$this._schematic = schematic;

  bool? _sex;
  bool? get sex => _$this._sex;
  set sex(bool? sex) => _$this._sex = sex;

  bool? _violence;
  bool? get violence => _$this._violence;
  set violence(bool? violence) => _$this._violence = violence;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  int? _downloads;
  int? get downloads => _$this._downloads;
  set downloads(int? downloads) => _$this._downloads = downloads;

  ListBuilder<String>? _categories;
  ListBuilder<String> get categories =>
      _$this._categories ??= new ListBuilder<String>();
  set categories(ListBuilder<String>? categories) =>
      _$this._categories = categories;

  ListBuilder<String>? _synsets;
  ListBuilder<String> get synsets =>
      _$this._synsets ??= new ListBuilder<String>();
  set synsets(ListBuilder<String>? synsets) => _$this._synsets = synsets;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  PictogramBuilder() {
    Pictogram._defaults(this);
  }

  PictogramBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _keywords = $v.keywords?.toBuilder();
      _schematic = $v.schematic;
      _sex = $v.sex;
      _violence = $v.violence;
      _created = $v.created;
      _lastUpdated = $v.lastUpdated;
      _downloads = $v.downloads;
      _categories = $v.categories?.toBuilder();
      _synsets = $v.synsets?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _desc = $v.desc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pictogram other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pictogram;
  }

  @override
  void update(void Function(PictogramBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pictogram build() => _build();

  _$Pictogram _build() {
    _$Pictogram _$result;
    try {
      _$result = _$v ??
          new _$Pictogram._(
              id: id,
              keywords: _keywords?.build(),
              schematic: schematic,
              sex: sex,
              violence: violence,
              created: created,
              lastUpdated: lastUpdated,
              downloads: downloads,
              categories: _categories?.build(),
              synsets: _synsets?.build(),
              tags: _tags?.build(),
              desc: desc);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keywords';
        _keywords?.build();

        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'synsets';
        _synsets?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Pictogram', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
