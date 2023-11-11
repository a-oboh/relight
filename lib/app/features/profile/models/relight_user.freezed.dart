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
  $Res call({String email, String displayName, Profile? profile});

  $ProfileCopyWith<$Res>? get profile;
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

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RelightUserCopyWith<$Res>
    implements $RelightUserCopyWith<$Res> {
  factory _$$_RelightUserCopyWith(
          _$_RelightUser value, $Res Function(_$_RelightUser) then) =
      __$$_RelightUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String displayName, Profile? profile});

  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_RelightUserCopyWithImpl<$Res>
    extends _$RelightUserCopyWithImpl<$Res, _$_RelightUser>
    implements _$$_RelightUserCopyWith<$Res> {
  __$$_RelightUserCopyWithImpl(
      _$_RelightUser _value, $Res Function(_$_RelightUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayName = null,
    Object? profile = freezed,
  }) {
    return _then(_$_RelightUser(
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
class _$_RelightUser implements _RelightUser {
  const _$_RelightUser(
      {required this.email, required this.displayName, this.profile});

  factory _$_RelightUser.fromJson(Map<String, dynamic> json) =>
      _$$_RelightUserFromJson(json);

  @override
  final String email;
  @override
  final String displayName;
  @override
  final Profile? profile;

  @override
  String toString() {
    return 'RelightUser(email: $email, displayName: $displayName, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelightUser &&
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
  _$$_RelightUserCopyWith<_$_RelightUser> get copyWith =>
      __$$_RelightUserCopyWithImpl<_$_RelightUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelightUserToJson(
      this,
    );
  }
}

abstract class _RelightUser implements RelightUser {
  const factory _RelightUser(
      {required final String email,
      required final String displayName,
      final Profile? profile}) = _$_RelightUser;

  factory _RelightUser.fromJson(Map<String, dynamic> json) =
      _$_RelightUser.fromJson;

  @override
  String get email;
  @override
  String get displayName;
  @override
  Profile? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_RelightUserCopyWith<_$_RelightUser> get copyWith =>
      throw _privateConstructorUsedError;
}
