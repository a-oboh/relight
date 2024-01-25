// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_metadata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UrlMetadataModel _$UrlMetadataModelFromJson(Map<String, dynamic> json) {
  return _UrlMetadataModel.fromJson(json);
}

/// @nodoc
mixin _$UrlMetadataModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  String get favicon => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlMetadataModelCopyWith<UrlMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlMetadataModelCopyWith<$Res> {
  factory $UrlMetadataModelCopyWith(
          UrlMetadataModel value, $Res Function(UrlMetadataModel) then) =
      _$UrlMetadataModelCopyWithImpl<$Res, UrlMetadataModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<String> images,
      int duration,
      String domain,
      String favicon,
      String url});
}

/// @nodoc
class _$UrlMetadataModelCopyWithImpl<$Res, $Val extends UrlMetadataModel>
    implements $UrlMetadataModelCopyWith<$Res> {
  _$UrlMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? duration = null,
    Object? domain = null,
    Object? favicon = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      favicon: null == favicon
          ? _value.favicon
          : favicon // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlMetadataModelImplCopyWith<$Res>
    implements $UrlMetadataModelCopyWith<$Res> {
  factory _$$UrlMetadataModelImplCopyWith(_$UrlMetadataModelImpl value,
          $Res Function(_$UrlMetadataModelImpl) then) =
      __$$UrlMetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<String> images,
      int duration,
      String domain,
      String favicon,
      String url});
}

/// @nodoc
class __$$UrlMetadataModelImplCopyWithImpl<$Res>
    extends _$UrlMetadataModelCopyWithImpl<$Res, _$UrlMetadataModelImpl>
    implements _$$UrlMetadataModelImplCopyWith<$Res> {
  __$$UrlMetadataModelImplCopyWithImpl(_$UrlMetadataModelImpl _value,
      $Res Function(_$UrlMetadataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? duration = null,
    Object? domain = null,
    Object? favicon = null,
    Object? url = null,
  }) {
    return _then(_$UrlMetadataModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      favicon: null == favicon
          ? _value.favicon
          : favicon // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlMetadataModelImpl implements _UrlMetadataModel {
  const _$UrlMetadataModelImpl(
      {required this.title,
      required this.description,
      required final List<String> images,
      required this.duration,
      required this.domain,
      required this.favicon,
      required this.url})
      : _images = images;

  factory _$UrlMetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlMetadataModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int duration;
  @override
  final String domain;
  @override
  final String favicon;
  @override
  final String url;

  @override
  String toString() {
    return 'UrlMetadataModel(title: $title, description: $description, images: $images, duration: $duration, domain: $domain, favicon: $favicon, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlMetadataModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.favicon, favicon) || other.favicon == favicon) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_images),
      duration,
      domain,
      favicon,
      url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlMetadataModelImplCopyWith<_$UrlMetadataModelImpl> get copyWith =>
      __$$UrlMetadataModelImplCopyWithImpl<_$UrlMetadataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlMetadataModelImplToJson(
      this,
    );
  }
}

abstract class _UrlMetadataModel implements UrlMetadataModel {
  const factory _UrlMetadataModel(
      {required final String title,
      required final String description,
      required final List<String> images,
      required final int duration,
      required final String domain,
      required final String favicon,
      required final String url}) = _$UrlMetadataModelImpl;

  factory _UrlMetadataModel.fromJson(Map<String, dynamic> json) =
      _$UrlMetadataModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get images;
  @override
  int get duration;
  @override
  String get domain;
  @override
  String get favicon;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$UrlMetadataModelImplCopyWith<_$UrlMetadataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
