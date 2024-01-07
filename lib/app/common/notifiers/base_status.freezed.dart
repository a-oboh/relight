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
    required TResult Function(String? errorText, Exception? exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorText, Exception? exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorText, Exception? exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBaseStatus value) initial,
    required TResult Function(LoadingBaseStatus value) loading,
    required TResult Function(ErrorBaseStatus value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseStatus value)? initial,
    TResult? Function(LoadingBaseStatus value)? loading,
    TResult? Function(ErrorBaseStatus value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseStatus value)? initial,
    TResult Function(LoadingBaseStatus value)? loading,
    TResult Function(ErrorBaseStatus value)? error,
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
abstract class _$$InitialBaseStatusImplCopyWith<$Res> {
  factory _$$InitialBaseStatusImplCopyWith(_$InitialBaseStatusImpl value,
          $Res Function(_$InitialBaseStatusImpl) then) =
      __$$InitialBaseStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialBaseStatusImplCopyWithImpl<$Res>
    extends _$BaseStatusCopyWithImpl<$Res, _$InitialBaseStatusImpl>
    implements _$$InitialBaseStatusImplCopyWith<$Res> {
  __$$InitialBaseStatusImplCopyWithImpl(_$InitialBaseStatusImpl _value,
      $Res Function(_$InitialBaseStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialBaseStatusImpl implements InitialBaseStatus {
  const _$InitialBaseStatusImpl();

  @override
  String toString() {
    return 'BaseStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialBaseStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorText, Exception? exception) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorText, Exception? exception)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorText, Exception? exception)? error,
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
    required TResult Function(InitialBaseStatus value) initial,
    required TResult Function(LoadingBaseStatus value) loading,
    required TResult Function(ErrorBaseStatus value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseStatus value)? initial,
    TResult? Function(LoadingBaseStatus value)? loading,
    TResult? Function(ErrorBaseStatus value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseStatus value)? initial,
    TResult Function(LoadingBaseStatus value)? loading,
    TResult Function(ErrorBaseStatus value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialBaseStatus implements BaseStatus {
  const factory InitialBaseStatus() = _$InitialBaseStatusImpl;
}

/// @nodoc
abstract class _$$LoadingBaseStatusImplCopyWith<$Res> {
  factory _$$LoadingBaseStatusImplCopyWith(_$LoadingBaseStatusImpl value,
          $Res Function(_$LoadingBaseStatusImpl) then) =
      __$$LoadingBaseStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBaseStatusImplCopyWithImpl<$Res>
    extends _$BaseStatusCopyWithImpl<$Res, _$LoadingBaseStatusImpl>
    implements _$$LoadingBaseStatusImplCopyWith<$Res> {
  __$$LoadingBaseStatusImplCopyWithImpl(_$LoadingBaseStatusImpl _value,
      $Res Function(_$LoadingBaseStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingBaseStatusImpl implements LoadingBaseStatus {
  const _$LoadingBaseStatusImpl();

  @override
  String toString() {
    return 'BaseStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingBaseStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorText, Exception? exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorText, Exception? exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorText, Exception? exception)? error,
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
    required TResult Function(InitialBaseStatus value) initial,
    required TResult Function(LoadingBaseStatus value) loading,
    required TResult Function(ErrorBaseStatus value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseStatus value)? initial,
    TResult? Function(LoadingBaseStatus value)? loading,
    TResult? Function(ErrorBaseStatus value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseStatus value)? initial,
    TResult Function(LoadingBaseStatus value)? loading,
    TResult Function(ErrorBaseStatus value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingBaseStatus implements BaseStatus {
  const factory LoadingBaseStatus() = _$LoadingBaseStatusImpl;
}

/// @nodoc
abstract class _$$ErrorBaseStatusImplCopyWith<$Res> {
  factory _$$ErrorBaseStatusImplCopyWith(_$ErrorBaseStatusImpl value,
          $Res Function(_$ErrorBaseStatusImpl) then) =
      __$$ErrorBaseStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText, Exception? exception});
}

/// @nodoc
class __$$ErrorBaseStatusImplCopyWithImpl<$Res>
    extends _$BaseStatusCopyWithImpl<$Res, _$ErrorBaseStatusImpl>
    implements _$$ErrorBaseStatusImplCopyWith<$Res> {
  __$$ErrorBaseStatusImplCopyWithImpl(
      _$ErrorBaseStatusImpl _value, $Res Function(_$ErrorBaseStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$ErrorBaseStatusImpl(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ErrorBaseStatusImpl implements ErrorBaseStatus {
  const _$ErrorBaseStatusImpl({this.errorText, this.exception});

  @override
  final String? errorText;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'BaseStatus.error(errorText: $errorText, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorBaseStatusImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorBaseStatusImplCopyWith<_$ErrorBaseStatusImpl> get copyWith =>
      __$$ErrorBaseStatusImplCopyWithImpl<_$ErrorBaseStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorText, Exception? exception) error,
  }) {
    return error(errorText, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorText, Exception? exception)? error,
  }) {
    return error?.call(errorText, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorText, Exception? exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorText, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBaseStatus value) initial,
    required TResult Function(LoadingBaseStatus value) loading,
    required TResult Function(ErrorBaseStatus value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseStatus value)? initial,
    TResult? Function(LoadingBaseStatus value)? loading,
    TResult? Function(ErrorBaseStatus value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseStatus value)? initial,
    TResult Function(LoadingBaseStatus value)? loading,
    TResult Function(ErrorBaseStatus value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorBaseStatus implements BaseStatus {
  const factory ErrorBaseStatus(
      {final String? errorText,
      final Exception? exception}) = _$ErrorBaseStatusImpl;

  String? get errorText;
  Exception? get exception;
  @JsonKey(ignore: true)
  _$$ErrorBaseStatusImplCopyWith<_$ErrorBaseStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
