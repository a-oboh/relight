// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_reminder_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleReminderRes _$ScheduleReminderResFromJson(Map<String, dynamic> json) {
  return _ScheduleReminderRes.fromJson(json);
}

/// @nodoc
mixin _$ScheduleReminderRes {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleReminderResCopyWith<ScheduleReminderRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleReminderResCopyWith<$Res> {
  factory $ScheduleReminderResCopyWith(
          ScheduleReminderRes value, $Res Function(ScheduleReminderRes) then) =
      _$ScheduleReminderResCopyWithImpl<$Res, ScheduleReminderRes>;
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class _$ScheduleReminderResCopyWithImpl<$Res, $Val extends ScheduleReminderRes>
    implements $ScheduleReminderResCopyWith<$Res> {
  _$ScheduleReminderResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleReminderResImplCopyWith<$Res>
    implements $ScheduleReminderResCopyWith<$Res> {
  factory _$$ScheduleReminderResImplCopyWith(_$ScheduleReminderResImpl value,
          $Res Function(_$ScheduleReminderResImpl) then) =
      __$$ScheduleReminderResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class __$$ScheduleReminderResImplCopyWithImpl<$Res>
    extends _$ScheduleReminderResCopyWithImpl<$Res, _$ScheduleReminderResImpl>
    implements _$$ScheduleReminderResImplCopyWith<$Res> {
  __$$ScheduleReminderResImplCopyWithImpl(_$ScheduleReminderResImpl _value,
      $Res Function(_$ScheduleReminderResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$ScheduleReminderResImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleReminderResImpl implements _ScheduleReminderRes {
  const _$ScheduleReminderResImpl(
      {required this.status, required this.message});

  factory _$ScheduleReminderResImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleReminderResImplFromJson(json);

  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'ScheduleReminderRes(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleReminderResImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleReminderResImplCopyWith<_$ScheduleReminderResImpl> get copyWith =>
      __$$ScheduleReminderResImplCopyWithImpl<_$ScheduleReminderResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleReminderResImplToJson(
      this,
    );
  }
}

abstract class _ScheduleReminderRes implements ScheduleReminderRes {
  const factory _ScheduleReminderRes(
      {required final String status,
      required final String message}) = _$ScheduleReminderResImpl;

  factory _ScheduleReminderRes.fromJson(Map<String, dynamic> json) =
      _$ScheduleReminderResImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleReminderResImplCopyWith<_$ScheduleReminderResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
