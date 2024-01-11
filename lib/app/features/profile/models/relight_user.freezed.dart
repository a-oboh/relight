// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relight_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelightUser _$RelightUserFromJson(Map<String, dynamic> json) {
  return _RelightUser.fromJson(json);
}

/// @nodoc
mixin _$RelightUser {
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile', fromJson: profileFromJson, toJson: profileToJson)
  Profile? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelightUserCopyWith<RelightUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelightUserCopyWith<$Res> {
  factory $RelightUserCopyWith(
          RelightUser value, $Res Function(RelightUser) then) =
      _$RelightUserCopyWithImpl<$Res, RelightUser>;
  @useResult
  $Res call(
      {String email,
      String displayName,
      @JsonKey(
          name: 'profile', fromJson: profileFromJson, toJson: profileToJson)
      Profile? profile});
}

/// @nodoc
class _$RelightUserCopyWithImpl<$Res, $Val extends RelightUser>
    implements $RelightUserCopyWith<$Res> {
  _$RelightUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayName = null,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelightUserImplCopyWith<$Res>
    implements $RelightUserCopyWith<$Res> {
  factory _$$RelightUserImplCopyWith(
          _$RelightUserImpl value, $Res Function(_$RelightUserImpl) then) =
      __$$RelightUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String displayName,
      @JsonKey(
          name: 'profile', fromJson: profileFromJson, toJson: profileToJson)
      Profile? profile});
}

/// @nodoc
class __$$RelightUserImplCopyWithImpl<$Res>
    extends _$RelightUserCopyWithImpl<$Res, _$RelightUserImpl>
    implements _$$RelightUserImplCopyWith<$Res> {
  __$$RelightUserImplCopyWithImpl(
      _$RelightUserImpl _value, $Res Function(_$RelightUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayName = null,
    Object? profile = freezed,
  }) {
    return _then(_$RelightUserImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$RelightUserImpl implements _RelightUser {
  _$RelightUserImpl(
      {required this.email,
      required this.displayName,
      @JsonKey(
          name: 'profile', fromJson: profileFromJson, toJson: profileToJson)
      this.profile});

  factory _$RelightUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelightUserImplFromJson(json);

  @override
  final String email;
  @override
  final String displayName;
  @override
  @JsonKey(name: 'profile', fromJson: profileFromJson, toJson: profileToJson)
  final Profile? profile;

  @override
  String toString() {
    return 'RelightUser(email: $email, displayName: $displayName, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelightUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, displayName, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelightUserImplCopyWith<_$RelightUserImpl> get copyWith =>
      __$$RelightUserImplCopyWithImpl<_$RelightUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelightUserImplToJson(
      this,
    );
  }
}

abstract class _RelightUser implements RelightUser {
  factory _RelightUser(
      {required final String email,
      required final String displayName,
      @JsonKey(
          name: 'profile', fromJson: profileFromJson, toJson: profileToJson)
      final Profile? profile}) = _$RelightUserImpl;

  factory _RelightUser.fromJson(Map<String, dynamic> json) =
      _$RelightUserImpl.fromJson;

  @override
  String get email;
  @override
  String get displayName;
  @override
  @JsonKey(name: 'profile', fromJson: profileFromJson, toJson: profileToJson)
  Profile? get profile;
  @override
  @JsonKey(ignore: true)
  _$$RelightUserImplCopyWith<_$RelightUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
