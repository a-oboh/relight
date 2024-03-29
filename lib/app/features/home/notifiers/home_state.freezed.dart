// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  BaseStatus get status => throw _privateConstructorUsedError;
  BaseStatus get deleteHighlightStatus => throw _privateConstructorUsedError;
  List<Highlight> get highlights => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {BaseStatus status,
      BaseStatus deleteHighlightStatus,
      List<Highlight> highlights});

  $BaseStatusCopyWith<$Res> get status;
  $BaseStatusCopyWith<$Res> get deleteHighlightStatus;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? deleteHighlightStatus = null,
    Object? highlights = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      deleteHighlightStatus: null == deleteHighlightStatus
          ? _value.deleteHighlightStatus
          : deleteHighlightStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<Highlight>,
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
  $BaseStatusCopyWith<$Res> get deleteHighlightStatus {
    return $BaseStatusCopyWith<$Res>(_value.deleteHighlightStatus, (value) {
      return _then(_value.copyWith(deleteHighlightStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus status,
      BaseStatus deleteHighlightStatus,
      List<Highlight> highlights});

  @override
  $BaseStatusCopyWith<$Res> get status;
  @override
  $BaseStatusCopyWith<$Res> get deleteHighlightStatus;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? deleteHighlightStatus = null,
    Object? highlights = null,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      deleteHighlightStatus: null == deleteHighlightStatus
          ? _value.deleteHighlightStatus
          : deleteHighlightStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      highlights: null == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<Highlight>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.status = const BaseStatus.initial(),
      this.deleteHighlightStatus = const BaseStatus.initial(),
      final List<Highlight> highlights = const <Highlight>[]})
      : _highlights = highlights;

  @override
  @JsonKey()
  final BaseStatus status;
  @override
  @JsonKey()
  final BaseStatus deleteHighlightStatus;
  final List<Highlight> _highlights;
  @override
  @JsonKey()
  List<Highlight> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  @override
  String toString() {
    return 'HomeState(status: $status, deleteHighlightStatus: $deleteHighlightStatus, highlights: $highlights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deleteHighlightStatus, deleteHighlightStatus) ||
                other.deleteHighlightStatus == deleteHighlightStatus) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, deleteHighlightStatus,
      const DeepCollectionEquality().hash(_highlights));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final BaseStatus status,
      final BaseStatus deleteHighlightStatus,
      final List<Highlight> highlights}) = _$HomeStateImpl;

  @override
  BaseStatus get status;
  @override
  BaseStatus get deleteHighlightStatus;
  @override
  List<Highlight> get highlights;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
