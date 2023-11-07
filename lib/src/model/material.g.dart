// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Material extends Material {
  @override
  final String? id;
  @override
  final BuiltList<int>? activity;
  @override
  final BuiltList<int>? area;
  @override
  final BuiltList<JsonObject> authors;
  @override
  final DateTime? created;
  @override
  final String desc;
  @override
  final num? downloads;
  @override
  final JsonObject? file;
  @override
  final JsonObject files;
  @override
  final int? idMaterial;
  @override
  final JsonObject? screenshots;
  @override
  final String? lang;
  @override
  final String? language;
  @override
  final DateTime? lastUpdate;
  @override
  final num? score;
  @override
  final int? status;
  @override
  final String title;
  @override
  final BuiltList<JsonObject>? translations;

  factory _$Material([void Function(MaterialBuilder)? updates]) =>
      (new MaterialBuilder()..update(updates))._build();

  _$Material._(
      {this.id,
      this.activity,
      this.area,
      required this.authors,
      this.created,
      required this.desc,
      this.downloads,
      this.file,
      required this.files,
      this.idMaterial,
      this.screenshots,
      this.lang,
      this.language,
      this.lastUpdate,
      this.score,
      this.status,
      required this.title,
      this.translations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(authors, r'Material', 'authors');
    BuiltValueNullFieldError.checkNotNull(desc, r'Material', 'desc');
    BuiltValueNullFieldError.checkNotNull(files, r'Material', 'files');
    BuiltValueNullFieldError.checkNotNull(title, r'Material', 'title');
  }

  @override
  Material rebuild(void Function(MaterialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaterialBuilder toBuilder() => new MaterialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Material &&
        id == other.id &&
        activity == other.activity &&
        area == other.area &&
        authors == other.authors &&
        created == other.created &&
        desc == other.desc &&
        downloads == other.downloads &&
        file == other.file &&
        files == other.files &&
        idMaterial == other.idMaterial &&
        screenshots == other.screenshots &&
        lang == other.lang &&
        language == other.language &&
        lastUpdate == other.lastUpdate &&
        score == other.score &&
        status == other.status &&
        title == other.title &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, downloads.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, idMaterial.hashCode);
    _$hash = $jc(_$hash, screenshots.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, lastUpdate.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, translations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Material')
          ..add('id', id)
          ..add('activity', activity)
          ..add('area', area)
          ..add('authors', authors)
          ..add('created', created)
          ..add('desc', desc)
          ..add('downloads', downloads)
          ..add('file', file)
          ..add('files', files)
          ..add('idMaterial', idMaterial)
          ..add('screenshots', screenshots)
          ..add('lang', lang)
          ..add('language', language)
          ..add('lastUpdate', lastUpdate)
          ..add('score', score)
          ..add('status', status)
          ..add('title', title)
          ..add('translations', translations))
        .toString();
  }
}

class MaterialBuilder implements Builder<Material, MaterialBuilder> {
  _$Material? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<int>? _activity;
  ListBuilder<int> get activity => _$this._activity ??= new ListBuilder<int>();
  set activity(ListBuilder<int>? activity) => _$this._activity = activity;

  ListBuilder<int>? _area;
  ListBuilder<int> get area => _$this._area ??= new ListBuilder<int>();
  set area(ListBuilder<int>? area) => _$this._area = area;

  ListBuilder<JsonObject>? _authors;
  ListBuilder<JsonObject> get authors =>
      _$this._authors ??= new ListBuilder<JsonObject>();
  set authors(ListBuilder<JsonObject>? authors) => _$this._authors = authors;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  num? _downloads;
  num? get downloads => _$this._downloads;
  set downloads(num? downloads) => _$this._downloads = downloads;

  JsonObject? _file;
  JsonObject? get file => _$this._file;
  set file(JsonObject? file) => _$this._file = file;

  JsonObject? _files;
  JsonObject? get files => _$this._files;
  set files(JsonObject? files) => _$this._files = files;

  int? _idMaterial;
  int? get idMaterial => _$this._idMaterial;
  set idMaterial(int? idMaterial) => _$this._idMaterial = idMaterial;

  JsonObject? _screenshots;
  JsonObject? get screenshots => _$this._screenshots;
  set screenshots(JsonObject? screenshots) => _$this._screenshots = screenshots;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _$this._lastUpdate;
  set lastUpdate(DateTime? lastUpdate) => _$this._lastUpdate = lastUpdate;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<JsonObject>? _translations;
  ListBuilder<JsonObject> get translations =>
      _$this._translations ??= new ListBuilder<JsonObject>();
  set translations(ListBuilder<JsonObject>? translations) =>
      _$this._translations = translations;

  MaterialBuilder() {
    Material._defaults(this);
  }

  MaterialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _activity = $v.activity?.toBuilder();
      _area = $v.area?.toBuilder();
      _authors = $v.authors.toBuilder();
      _created = $v.created;
      _desc = $v.desc;
      _downloads = $v.downloads;
      _file = $v.file;
      _files = $v.files;
      _idMaterial = $v.idMaterial;
      _screenshots = $v.screenshots;
      _lang = $v.lang;
      _language = $v.language;
      _lastUpdate = $v.lastUpdate;
      _score = $v.score;
      _status = $v.status;
      _title = $v.title;
      _translations = $v.translations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Material other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Material;
  }

  @override
  void update(void Function(MaterialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Material build() => _build();

  _$Material _build() {
    _$Material _$result;
    try {
      _$result = _$v ??
          new _$Material._(
              id: id,
              activity: _activity?.build(),
              area: _area?.build(),
              authors: authors.build(),
              created: created,
              desc: BuiltValueNullFieldError.checkNotNull(
                  desc, r'Material', 'desc'),
              downloads: downloads,
              file: file,
              files: BuiltValueNullFieldError.checkNotNull(
                  files, r'Material', 'files'),
              idMaterial: idMaterial,
              screenshots: screenshots,
              lang: lang,
              language: language,
              lastUpdate: lastUpdate,
              score: score,
              status: status,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Material', 'title'),
              translations: _translations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activity';
        _activity?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'authors';
        authors.build();

        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Material', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
