// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  FrequencyValueEnum get selectedFrequency =>
      throw _privateConstructorUsedError;
  BaseStatus get status => throw _privateConstructorUsedError;
  BaseStatus get reminderPageStatus => throw _privateConstructorUsedError;
  RelightUser? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {FrequencyValueEnum selectedFrequency,
      BaseStatus status,
      BaseStatus reminderPageStatus,
      RelightUser? user});

  $BaseStatusCopyWith<$Res> get status;
  $BaseStatusCopyWith<$Res> get reminderPageStatus;
  $RelightUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFrequency = null,
    Object? status = null,
    Object? reminderPageStatus = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      selectedFrequency: null == selectedFrequency
          ? _value.selectedFrequency
          : selectedFrequency // ignore: cast_nullable_to_non_nullable
              as FrequencyValueEnum,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      reminderPageStatus: null == reminderPageStatus
          ? _value.reminderPageStatus
          : reminderPageStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RelightUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<$Res> get status {
    return $BaseStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<$Res> get reminderPageStatus {
    return $BaseStatusCopyWith<$Res>(_value.reminderPageStatus, (value) {
      return _then(_value.copyWith(reminderPageStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RelightUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $RelightUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FrequencyValueEnum selectedFrequency,
      BaseStatus status,
      BaseStatus reminderPageStatus,
      RelightUser? user});

  @override
  $BaseStatusCopyWith<$Res> get status;
  @override
  $BaseStatusCopyWith<$Res> get reminderPageStatus;
  @override
  $RelightUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFrequency = null,
    Object? status = null,
    Object? reminderPageStatus = null,
    Object? user = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      selectedFrequency: null == selectedFrequency
          ? _value.selectedFrequency
          : selectedFrequency // ignore: cast_nullable_to_non_nullable
              as FrequencyValueEnum,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      reminderPageStatus: null == reminderPageStatus
          ? _value.reminderPageStatus
          : reminderPageStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RelightUser?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.selectedFrequency = FrequencyValueEnum.daily,
      this.status = const BaseStatus.initial(),
      this.reminderPageStatus = const BaseStatus.initial(),
      this.user});

  @override
  @JsonKey()
  final FrequencyValueEnum selectedFrequency;
  @override
  @JsonKey()
  final BaseStatus status;
  @override
  @JsonKey()
  final BaseStatus reminderPageStatus;
  @override
  final RelightUser? user;

  @override
  String toString() {
    return 'ProfileState(selectedFrequency: $selectedFrequency, status: $status, reminderPageStatus: $reminderPageStatus, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.selectedFrequency, selectedFrequency) ||
                other.selectedFrequency == selectedFrequency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reminderPageStatus, reminderPageStatus) ||
                other.reminderPageStatus == reminderPageStatus) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedFrequency, status, reminderPageStatus, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final FrequencyValueEnum selectedFrequency,
      final BaseStatus status,
      final BaseStatus reminderPageStatus,
      final RelightUser? user}) = _$ProfileStateImpl;

  @override
  FrequencyValueEnum get selectedFrequency;
  @override
  BaseStatus get status;
  @override
  BaseStatus get reminderPageStatus;
  @override
  RelightUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
