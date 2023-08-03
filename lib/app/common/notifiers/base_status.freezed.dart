// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorText) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorText)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorText)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitalBaseStatus value) initial,
    required TResult Function(_LoadingBaseStatus value) loading,
    required TResult Function(_ErrorBaseStatus value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitalBaseStatus value)? initial,
    TResult? Function(_LoadingBaseStatus value)? loading,
    TResult? Function(_ErrorBaseStatus value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitalBaseStatus value)? initial,
    TResult Function(_LoadingBaseStatus value)? loading,
    TResult Function(_ErrorBaseStatus value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStatusCopyWith<$Res> {
  factory $BaseStatusCopyWith(
          BaseStatus value, $Res Function(BaseStatus) then) =
      _$BaseStatusCopyWithImpl<$Res, BaseStatus>;
}

/// @nodoc
class _$BaseStatusCopyWithImpl<$Res, $Val extends BaseStatus>
    implements $BaseStatusCopyWith<$Res> {
  _$BaseStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitalBaseStatusCopyWith<$Res> {
  factory _$$_InitalBaseStatusCopyWith(
          _$_InitalBaseStatus value, $Res Function(_$_InitalBaseStatus) then) =
      __$$_InitalBaseStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitalBaseStatusCopyWithImpl<$Res>
    extends _$BaseStatusCopyWithImpl<$Res, _$_InitalBaseStatus>
    implements _$$_InitalBaseStatusCopyWith<$Res> {
  __$$_InitalBaseStatusCopyWithImpl(
      _$_InitalBaseStatus _value, $Res Function(_$_InitalBaseStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitalBaseStatus implements _InitalBaseStatus {
  const _$_InitalBaseStatus();

  @override
  String toString() {
    return 'BaseStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitalBaseStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorText) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorText)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorText)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitalBaseStatus value) initial,
    required TResult Function(_LoadingBaseStatus value) loading,
    required TResult Function(_ErrorBaseStatus value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitalBaseStatus value)? initial,
    TResult? Function(_LoadingBaseStatus value)? loading,
    TResult? Function(_ErrorBaseStatus value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitalBaseStatus value)? initial,
    TResult Function(_LoadingBaseStatus value)? loading,
    TResult Function(_ErrorBaseStatus value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitalBaseStatus implements BaseStatus {
  const factory _InitalBaseStatus() = _$_InitalBaseStatus;
}

/// @nodoc
abstract class _$$_LoadingBaseStatusCopyWith<$Res> {
  factory _$$_LoadingBaseStatusCopyWith(_$_LoadingBaseStatus value,
          $Res Function(_$_LoadingBaseStatus) then) =
      __$$_LoadingBaseStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingBaseStatusCopyWithImpl<$Res>
    extends _$BaseStatusCopyWithImpl<$Res, _$_LoadingBaseStatus>
    implements _$$_LoadingBaseStatusCopyWith<$Res> {
  __$$_LoadingBaseStatusCopyWithImpl(
      _$_LoadingBaseStatus _value, $Res Function(_$_LoadingBaseStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingBaseStatus implements _LoadingBaseStatus {
  const _$_LoadingBaseStatus();

  @override
  String toString() {
    return 'BaseStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingBaseStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorText) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorText)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorText)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitalBaseStatus value) initial,
    required TResult Function(_LoadingBaseStatus value) loading,
    required TResult Function(_ErrorBaseStatus value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitalBaseStatus value)? initial,
    TResult? Function(_LoadingBaseStatus value)? loading,
    TResult? Function(_ErrorBaseStatus value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitalBaseStatus value)? initial,
    TResult Function(_LoadingBaseStatus value)? loading,
    TResult Function(_ErrorBaseStatus value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingBaseStatus implements BaseStatus {
  const factory _LoadingBaseStatus() = _$_LoadingBaseStatus;
}

/// @nodoc
abstract class _$$_ErrorBaseStatusCopyWith<$Res> {
  factory _$$_ErrorBaseStatusCopyWith(
          _$_ErrorBaseStatus value, $Res Function(_$_ErrorBaseStatus) then) =
      __$$_ErrorBaseStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_ErrorBaseStatusCopyWithImpl<$Res>
    extends _$BaseStatusCopyWithImpl<$Res, _$_ErrorBaseStatus>
    implements _$$_ErrorBaseStatusCopyWith<$Res> {
  __$$_ErrorBaseStatusCopyWithImpl(
      _$_ErrorBaseStatus _value, $Res Function(_$_ErrorBaseStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_ErrorBaseStatus(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErrorBaseStatus implements _ErrorBaseStatus {
  const _$_ErrorBaseStatus({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'BaseStatus.error(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorBaseStatus &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorBaseStatusCopyWith<_$_ErrorBaseStatus> get copyWith =>
      __$$_ErrorBaseStatusCopyWithImpl<_$_ErrorBaseStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorText) error,
  }) {
    return error(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorText)? error,
  }) {
    return error?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorText)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitalBaseStatus value) initial,
    required TResult Function(_LoadingBaseStatus value) loading,
    required TResult Function(_ErrorBaseStatus value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitalBaseStatus value)? initial,
    TResult? Function(_LoadingBaseStatus value)? loading,
    TResult? Function(_ErrorBaseStatus value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitalBaseStatus value)? initial,
    TResult Function(_LoadingBaseStatus value)? loading,
    TResult Function(_ErrorBaseStatus value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorBaseStatus implements BaseStatus {
  const factory _ErrorBaseStatus({final String? errorText}) =
      _$_ErrorBaseStatus;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_ErrorBaseStatusCopyWith<_$_ErrorBaseStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
