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
  String get plainContent => throw _privateConstructorUsedError;
  UrlMetadataModel? get urlMetadata => throw _privateConstructorUsedError;
  String get sourceId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

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
  $Res call(
      {String content,
      String plainContent,
      UrlMetadataModel? urlMetadata,
      String sourceId,
      DateTime createdAt,
      String owner,
      String? id});

  $UrlMetadataModelCopyWith<$Res>? get urlMetadata;
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
    Object? plainContent = null,
    Object? urlMetadata = freezed,
    Object? sourceId = null,
    Object? createdAt = null,
    Object? owner = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      plainContent: null == plainContent
          ? _value.plainContent
          : plainContent // ignore: cast_nullable_to_non_nullable
              as String,
      urlMetadata: freezed == urlMetadata
          ? _value.urlMetadata
          : urlMetadata // ignore: cast_nullable_to_non_nullable
              as UrlMetadataModel?,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlMetadataModelCopyWith<$Res>? get urlMetadata {
    if (_value.urlMetadata == null) {
      return null;
    }

    return $UrlMetadataModelCopyWith<$Res>(_value.urlMetadata!, (value) {
      return _then(_value.copyWith(urlMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HighlightImplCopyWith<$Res>
    implements $HighlightCopyWith<$Res> {
  factory _$$HighlightImplCopyWith(
          _$HighlightImpl value, $Res Function(_$HighlightImpl) then) =
      __$$HighlightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      String plainContent,
      UrlMetadataModel? urlMetadata,
      String sourceId,
      DateTime createdAt,
      String owner,
      String? id});

  @override
  $UrlMetadataModelCopyWith<$Res>? get urlMetadata;
}

/// @nodoc
class __$$HighlightImplCopyWithImpl<$Res>
    extends _$HighlightCopyWithImpl<$Res, _$HighlightImpl>
    implements _$$HighlightImplCopyWith<$Res> {
  __$$HighlightImplCopyWithImpl(
      _$HighlightImpl _value, $Res Function(_$HighlightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? plainContent = null,
    Object? urlMetadata = freezed,
    Object? sourceId = null,
    Object? createdAt = null,
    Object? owner = null,
    Object? id = freezed,
  }) {
    return _then(_$HighlightImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      plainContent: null == plainContent
          ? _value.plainContent
          : plainContent // ignore: cast_nullable_to_non_nullable
              as String,
      urlMetadata: freezed == urlMetadata
          ? _value.urlMetadata
          : urlMetadata // ignore: cast_nullable_to_non_nullable
              as UrlMetadataModel?,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlightImpl implements _Highlight {
  const _$HighlightImpl(
      {required this.content,
      required this.plainContent,
      this.urlMetadata,
      required this.sourceId,
      required this.createdAt,
      required this.owner,
      this.id});

  factory _$HighlightImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightImplFromJson(json);

  @override
  final String content;
  @override
  final String plainContent;
  @override
  final UrlMetadataModel? urlMetadata;
  @override
  final String sourceId;
  @override
  final DateTime createdAt;
  @override
  final String owner;
  @override
  final String? id;

  @override
  String toString() {
    return 'Highlight(content: $content, plainContent: $plainContent, urlMetadata: $urlMetadata, sourceId: $sourceId, createdAt: $createdAt, owner: $owner, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.plainContent, plainContent) ||
                other.plainContent == plainContent) &&
            (identical(other.urlMetadata, urlMetadata) ||
                other.urlMetadata == urlMetadata) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, plainContent,
      urlMetadata, sourceId, createdAt, owner, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightImplCopyWith<_$HighlightImpl> get copyWith =>
      __$$HighlightImplCopyWithImpl<_$HighlightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightImplToJson(
      this,
    );
  }
}

abstract class _Highlight implements Highlight {
  const factory _Highlight(
      {required final String content,
      required final String plainContent,
      final UrlMetadataModel? urlMetadata,
      required final String sourceId,
      required final DateTime createdAt,
      required final String owner,
      final String? id}) = _$HighlightImpl;

  factory _Highlight.fromJson(Map<String, dynamic> json) =
      _$HighlightImpl.fromJson;

  @override
  String get content;
  @override
  String get plainContent;
  @override
  UrlMetadataModel? get urlMetadata;
  @override
  String get sourceId;
  @override
  DateTime get createdAt;
  @override
  String get owner;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$HighlightImplCopyWith<_$HighlightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
