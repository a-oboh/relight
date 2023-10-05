// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HighlightSource _$HighlightSourceFromJson(Map<String, dynamic> json) {
  return _HighlightSource.fromJson(json);
}

/// @nodoc
mixin _$HighlightSource {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighlightSourceCopyWith<HighlightSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightSourceCopyWith<$Res> {
  factory $HighlightSourceCopyWith(
          HighlightSource value, $Res Function(HighlightSource) then) =
      _$HighlightSourceCopyWithImpl<$Res, HighlightSource>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String author,
      String owner,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$HighlightSourceCopyWithImpl<$Res, $Val extends HighlightSource>
    implements $HighlightSourceCopyWith<$Res> {
  _$HighlightSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? author = null,
    Object? owner = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HighlightSourceCopyWith<$Res>
    implements $HighlightSourceCopyWith<$Res> {
  factory _$$_HighlightSourceCopyWith(
          _$_HighlightSource value, $Res Function(_$_HighlightSource) then) =
      __$$_HighlightSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String author,
      String owner,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_HighlightSourceCopyWithImpl<$Res>
    extends _$HighlightSourceCopyWithImpl<$Res, _$_HighlightSource>
    implements _$$_HighlightSourceCopyWith<$Res> {
  __$$_HighlightSourceCopyWithImpl(
      _$_HighlightSource _value, $Res Function(_$_HighlightSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? author = null,
    Object? owner = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_HighlightSource(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HighlightSource implements _HighlightSource {
  const _$_HighlightSource(
      {this.id,
      required this.name,
      required this.author,
      this.owner = '',
      this.createdAt,
      this.updatedAt});

  factory _$_HighlightSource.fromJson(Map<String, dynamic> json) =>
      _$$_HighlightSourceFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String author;
  @override
  @JsonKey()
  final String owner;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'HighlightSource(id: $id, name: $name, author: $author, owner: $owner, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HighlightSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, author, owner, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HighlightSourceCopyWith<_$_HighlightSource> get copyWith =>
      __$$_HighlightSourceCopyWithImpl<_$_HighlightSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HighlightSourceToJson(
      this,
    );
  }
}

abstract class _HighlightSource implements HighlightSource {
  const factory _HighlightSource(
      {final String? id,
      required final String name,
      required final String author,
      final String owner,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_HighlightSource;

  factory _HighlightSource.fromJson(Map<String, dynamic> json) =
      _$_HighlightSource.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get author;
  @override
  String get owner;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_HighlightSourceCopyWith<_$_HighlightSource> get copyWith =>
      throw _privateConstructorUsedError;
}
