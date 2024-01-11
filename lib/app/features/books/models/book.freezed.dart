// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Books _$BooksFromJson(Map<String, dynamic> json) {
  return _Books.fromJson(json);
}

/// @nodoc
mixin _$Books {
  String get kind => throw _privateConstructorUsedError;
  List<Book> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksCopyWith<Books> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksCopyWith<$Res> {
  factory $BooksCopyWith(Books value, $Res Function(Books) then) =
      _$BooksCopyWithImpl<$Res, Books>;
  @useResult
  $Res call({String kind, List<Book> items});
}

/// @nodoc
class _$BooksCopyWithImpl<$Res, $Val extends Books>
    implements $BooksCopyWith<$Res> {
  _$BooksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooksImplCopyWith<$Res> implements $BooksCopyWith<$Res> {
  factory _$$BooksImplCopyWith(
          _$BooksImpl value, $Res Function(_$BooksImpl) then) =
      __$$BooksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, List<Book> items});
}

/// @nodoc
class __$$BooksImplCopyWithImpl<$Res>
    extends _$BooksCopyWithImpl<$Res, _$BooksImpl>
    implements _$$BooksImplCopyWith<$Res> {
  __$$BooksImplCopyWithImpl(
      _$BooksImpl _value, $Res Function(_$BooksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? items = null,
  }) {
    return _then(_$BooksImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooksImpl implements _Books {
  const _$BooksImpl(
      {required this.kind, final List<Book> items = const <Book>[]})
      : _items = items;

  factory _$BooksImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooksImplFromJson(json);

  @override
  final String kind;
  final List<Book> _items;
  @override
  @JsonKey()
  List<Book> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Books(kind: $kind, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kind, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksImplCopyWith<_$BooksImpl> get copyWith =>
      __$$BooksImplCopyWithImpl<_$BooksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooksImplToJson(
      this,
    );
  }
}

abstract class _Books implements Books {
  const factory _Books({required final String kind, final List<Book> items}) =
      _$BooksImpl;

  factory _Books.fromJson(Map<String, dynamic> json) = _$BooksImpl.fromJson;

  @override
  String get kind;
  @override
  List<Book> get items;
  @override
  @JsonKey(ignore: true)
  _$$BooksImplCopyWith<_$BooksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String get kind => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  String get selfLink => throw _privateConstructorUsedError;
  VolumeInfo get volumeInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {String kind,
      String id,
      String etag,
      String selfLink,
      VolumeInfo volumeInfo});

  $VolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? id = null,
    Object? etag = null,
    Object? selfLink = null,
    Object? volumeInfo = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      selfLink: null == selfLink
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String,
      volumeInfo: null == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeInfoCopyWith<$Res> get volumeInfo {
    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kind,
      String id,
      String etag,
      String selfLink,
      VolumeInfo volumeInfo});

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? id = null,
    Object? etag = null,
    Object? selfLink = null,
    Object? volumeInfo = null,
  }) {
    return _then(_$BookImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      selfLink: null == selfLink
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String,
      volumeInfo: null == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl(
      {required this.kind,
      required this.id,
      required this.etag,
      required this.selfLink,
      required this.volumeInfo});

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final String kind;
  @override
  final String id;
  @override
  final String etag;
  @override
  final String selfLink;
  @override
  final VolumeInfo volumeInfo;

  @override
  String toString() {
    return 'Book(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.selfLink, selfLink) ||
                other.selfLink == selfLink) &&
            (identical(other.volumeInfo, volumeInfo) ||
                other.volumeInfo == volumeInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kind, id, etag, selfLink, volumeInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {required final String kind,
      required final String id,
      required final String etag,
      required final String selfLink,
      required final VolumeInfo volumeInfo}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  String get kind;
  @override
  String get id;
  @override
  String get etag;
  @override
  String get selfLink;
  @override
  VolumeInfo get volumeInfo;
  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

/// @nodoc
mixin _$VolumeInfo {
  String get title => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolumeInfoCopyWith<VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
          VolumeInfo value, $Res Function(VolumeInfo) then) =
      _$VolumeInfoCopyWithImpl<$Res, VolumeInfo>;
  @useResult
  $Res call({String title, List<String> authors});
}

/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res, $Val extends VolumeInfo>
    implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? authors = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VolumeInfoImplCopyWith<$Res>
    implements $VolumeInfoCopyWith<$Res> {
  factory _$$VolumeInfoImplCopyWith(
          _$VolumeInfoImpl value, $Res Function(_$VolumeInfoImpl) then) =
      __$$VolumeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> authors});
}

/// @nodoc
class __$$VolumeInfoImplCopyWithImpl<$Res>
    extends _$VolumeInfoCopyWithImpl<$Res, _$VolumeInfoImpl>
    implements _$$VolumeInfoImplCopyWith<$Res> {
  __$$VolumeInfoImplCopyWithImpl(
      _$VolumeInfoImpl _value, $Res Function(_$VolumeInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? authors = null,
  }) {
    return _then(_$VolumeInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolumeInfoImpl implements _VolumeInfo {
  const _$VolumeInfoImpl(
      {required this.title, required final List<String> authors})
      : _authors = authors;

  factory _$VolumeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolumeInfoImplFromJson(json);

  @override
  final String title;
  final List<String> _authors;
  @override
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  String toString() {
    return 'VolumeInfo(title: $title, authors: $authors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolumeInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_authors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      __$$VolumeInfoImplCopyWithImpl<_$VolumeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolumeInfoImplToJson(
      this,
    );
  }
}

abstract class _VolumeInfo implements VolumeInfo {
  const factory _VolumeInfo(
      {required final String title,
      required final List<String> authors}) = _$VolumeInfoImpl;

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$VolumeInfoImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get authors;
  @override
  @JsonKey(ignore: true)
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
