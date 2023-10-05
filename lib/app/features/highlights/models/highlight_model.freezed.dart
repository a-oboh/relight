// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Highlight _$HighlightFromJson(Map<String, dynamic> json) {
  return _Highlight.fromJson(json);
}

/// @nodoc
mixin _$Highlight {
  String get content => throw _privateConstructorUsedError;
  String get sourceId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighlightCopyWith<Highlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightCopyWith<$Res> {
  factory $HighlightCopyWith(Highlight value, $Res Function(Highlight) then) =
      _$HighlightCopyWithImpl<$Res, Highlight>;
  @useResult
  $Res call({String content, String sourceId, DateTime createdAt});
}

/// @nodoc
class _$HighlightCopyWithImpl<$Res, $Val extends Highlight>
    implements $HighlightCopyWith<$Res> {
  _$HighlightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? sourceId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HighlightCopyWith<$Res> implements $HighlightCopyWith<$Res> {
  factory _$$_HighlightCopyWith(
          _$_Highlight value, $Res Function(_$_Highlight) then) =
      __$$_HighlightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String sourceId, DateTime createdAt});
}

/// @nodoc
class __$$_HighlightCopyWithImpl<$Res>
    extends _$HighlightCopyWithImpl<$Res, _$_Highlight>
    implements _$$_HighlightCopyWith<$Res> {
  __$$_HighlightCopyWithImpl(
      _$_Highlight _value, $Res Function(_$_Highlight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? sourceId = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Highlight(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Highlight implements _Highlight {
  const _$_Highlight(
      {required this.content, required this.sourceId, required this.createdAt});

  factory _$_Highlight.fromJson(Map<String, dynamic> json) =>
      _$$_HighlightFromJson(json);

  @override
  final String content;
  @override
  final String sourceId;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Highlight(content: $content, sourceId: $sourceId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Highlight &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, sourceId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HighlightCopyWith<_$_Highlight> get copyWith =>
      __$$_HighlightCopyWithImpl<_$_Highlight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HighlightToJson(
      this,
    );
  }
}

abstract class _Highlight implements Highlight {
  const factory _Highlight(
      {required final String content,
      required final String sourceId,
      required final DateTime createdAt}) = _$_Highlight;

  factory _Highlight.fromJson(Map<String, dynamic> json) =
      _$_Highlight.fromJson;

  @override
  String get content;
  @override
  String get sourceId;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_HighlightCopyWith<_$_Highlight> get copyWith =>
      throw _privateConstructorUsedError;
}
