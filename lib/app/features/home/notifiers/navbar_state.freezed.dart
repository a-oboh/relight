// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navbar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavbarState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavbarStateCopyWith<NavbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavbarStateCopyWith<$Res> {
  factory $NavbarStateCopyWith(
          NavbarState value, $Res Function(NavbarState) then) =
      _$NavbarStateCopyWithImpl<$Res, NavbarState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$NavbarStateCopyWithImpl<$Res, $Val extends NavbarState>
    implements $NavbarStateCopyWith<$Res> {
  _$NavbarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavbarStateImplCopyWith<$Res>
    implements $NavbarStateCopyWith<$Res> {
  factory _$$NavbarStateImplCopyWith(
          _$NavbarStateImpl value, $Res Function(_$NavbarStateImpl) then) =
      __$$NavbarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$NavbarStateImplCopyWithImpl<$Res>
    extends _$NavbarStateCopyWithImpl<$Res, _$NavbarStateImpl>
    implements _$$NavbarStateImplCopyWith<$Res> {
  __$$NavbarStateImplCopyWithImpl(
      _$NavbarStateImpl _value, $Res Function(_$NavbarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$NavbarStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavbarStateImpl implements _NavbarState {
  _$NavbarStateImpl({this.selectedIndex = 0});

  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'NavbarState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavbarStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavbarStateImplCopyWith<_$NavbarStateImpl> get copyWith =>
      __$$NavbarStateImplCopyWithImpl<_$NavbarStateImpl>(this, _$identity);
}

abstract class _NavbarState implements NavbarState {
  factory _NavbarState({final int selectedIndex}) = _$NavbarStateImpl;

  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$NavbarStateImplCopyWith<_$NavbarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
