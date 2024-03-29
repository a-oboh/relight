// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HighlightState {
  BaseStatus get status => throw _privateConstructorUsedError;
  BaseStatus get createHighlightStatus => throw _privateConstructorUsedError;
  BaseStatus get loadedSourcesStatus => throw _privateConstructorUsedError;
  List<Book> get bookResponse => throw _privateConstructorUsedError;
  List<HighlightSource> get loadedSources => throw _privateConstructorUsedError;
  Book? get selectedBook => throw _privateConstructorUsedError;
  String? get highlightContent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HighlightStateCopyWith<HighlightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightStateCopyWith<$Res> {
  factory $HighlightStateCopyWith(
          HighlightState value, $Res Function(HighlightState) then) =
      _$HighlightStateCopyWithImpl<$Res, HighlightState>;
  @useResult
  $Res call(
      {BaseStatus status,
      BaseStatus createHighlightStatus,
      BaseStatus loadedSourcesStatus,
      List<Book> bookResponse,
      List<HighlightSource> loadedSources,
      Book? selectedBook,
      String? highlightContent});

  $BaseStatusCopyWith<$Res> get status;
  $BaseStatusCopyWith<$Res> get createHighlightStatus;
  $BaseStatusCopyWith<$Res> get loadedSourcesStatus;
  $BookCopyWith<$Res>? get selectedBook;
}

/// @nodoc
class _$HighlightStateCopyWithImpl<$Res, $Val extends HighlightState>
    implements $HighlightStateCopyWith<$Res> {
  _$HighlightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createHighlightStatus = null,
    Object? loadedSourcesStatus = null,
    Object? bookResponse = null,
    Object? loadedSources = null,
    Object? selectedBook = freezed,
    Object? highlightContent = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      createHighlightStatus: null == createHighlightStatus
          ? _value.createHighlightStatus
          : createHighlightStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      loadedSourcesStatus: null == loadedSourcesStatus
          ? _value.loadedSourcesStatus
          : loadedSourcesStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      bookResponse: null == bookResponse
          ? _value.bookResponse
          : bookResponse // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      loadedSources: null == loadedSources
          ? _value.loadedSources
          : loadedSources // ignore: cast_nullable_to_non_nullable
              as List<HighlightSource>,
      selectedBook: freezed == selectedBook
          ? _value.selectedBook
          : selectedBook // ignore: cast_nullable_to_non_nullable
              as Book?,
      highlightContent: freezed == highlightContent
          ? _value.highlightContent
          : highlightContent // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $BaseStatusCopyWith<$Res> get createHighlightStatus {
    return $BaseStatusCopyWith<$Res>(_value.createHighlightStatus, (value) {
      return _then(_value.copyWith(createHighlightStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<$Res> get loadedSourcesStatus {
    return $BaseStatusCopyWith<$Res>(_value.loadedSourcesStatus, (value) {
      return _then(_value.copyWith(loadedSourcesStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res>? get selectedBook {
    if (_value.selectedBook == null) {
      return null;
    }

    return $BookCopyWith<$Res>(_value.selectedBook!, (value) {
      return _then(_value.copyWith(selectedBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HighlightStateImplCopyWith<$Res>
    implements $HighlightStateCopyWith<$Res> {
  factory _$$HighlightStateImplCopyWith(_$HighlightStateImpl value,
          $Res Function(_$HighlightStateImpl) then) =
      __$$HighlightStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus status,
      BaseStatus createHighlightStatus,
      BaseStatus loadedSourcesStatus,
      List<Book> bookResponse,
      List<HighlightSource> loadedSources,
      Book? selectedBook,
      String? highlightContent});

  @override
  $BaseStatusCopyWith<$Res> get status;
  @override
  $BaseStatusCopyWith<$Res> get createHighlightStatus;
  @override
  $BaseStatusCopyWith<$Res> get loadedSourcesStatus;
  @override
  $BookCopyWith<$Res>? get selectedBook;
}

/// @nodoc
class __$$HighlightStateImplCopyWithImpl<$Res>
    extends _$HighlightStateCopyWithImpl<$Res, _$HighlightStateImpl>
    implements _$$HighlightStateImplCopyWith<$Res> {
  __$$HighlightStateImplCopyWithImpl(
      _$HighlightStateImpl _value, $Res Function(_$HighlightStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createHighlightStatus = null,
    Object? loadedSourcesStatus = null,
    Object? bookResponse = null,
    Object? loadedSources = null,
    Object? selectedBook = freezed,
    Object? highlightContent = freezed,
  }) {
    return _then(_$HighlightStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      createHighlightStatus: null == createHighlightStatus
          ? _value.createHighlightStatus
          : createHighlightStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      loadedSourcesStatus: null == loadedSourcesStatus
          ? _value.loadedSourcesStatus
          : loadedSourcesStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      bookResponse: null == bookResponse
          ? _value._bookResponse
          : bookResponse // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      loadedSources: null == loadedSources
          ? _value._loadedSources
          : loadedSources // ignore: cast_nullable_to_non_nullable
              as List<HighlightSource>,
      selectedBook: freezed == selectedBook
          ? _value.selectedBook
          : selectedBook // ignore: cast_nullable_to_non_nullable
              as Book?,
      highlightContent: freezed == highlightContent
          ? _value.highlightContent
          : highlightContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HighlightStateImpl implements _HighlightState {
  const _$HighlightStateImpl(
      {this.status = const BaseStatus.initial(),
      this.createHighlightStatus = const BaseStatus.initial(),
      this.loadedSourcesStatus = const BaseStatus.initial(),
      final List<Book> bookResponse = const <Book>[],
      final List<HighlightSource> loadedSources = const <HighlightSource>[],
      this.selectedBook,
      this.highlightContent})
      : _bookResponse = bookResponse,
        _loadedSources = loadedSources;

  @override
  @JsonKey()
  final BaseStatus status;
  @override
  @JsonKey()
  final BaseStatus createHighlightStatus;
  @override
  @JsonKey()
  final BaseStatus loadedSourcesStatus;
  final List<Book> _bookResponse;
  @override
  @JsonKey()
  List<Book> get bookResponse {
    if (_bookResponse is EqualUnmodifiableListView) return _bookResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookResponse);
  }

  final List<HighlightSource> _loadedSources;
  @override
  @JsonKey()
  List<HighlightSource> get loadedSources {
    if (_loadedSources is EqualUnmodifiableListView) return _loadedSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadedSources);
  }

  @override
  final Book? selectedBook;
  @override
  final String? highlightContent;

  @override
  String toString() {
    return 'HighlightState(status: $status, createHighlightStatus: $createHighlightStatus, loadedSourcesStatus: $loadedSourcesStatus, bookResponse: $bookResponse, loadedSources: $loadedSources, selectedBook: $selectedBook, highlightContent: $highlightContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createHighlightStatus, createHighlightStatus) ||
                other.createHighlightStatus == createHighlightStatus) &&
            (identical(other.loadedSourcesStatus, loadedSourcesStatus) ||
                other.loadedSourcesStatus == loadedSourcesStatus) &&
            const DeepCollectionEquality()
                .equals(other._bookResponse, _bookResponse) &&
            const DeepCollectionEquality()
                .equals(other._loadedSources, _loadedSources) &&
            (identical(other.selectedBook, selectedBook) ||
                other.selectedBook == selectedBook) &&
            (identical(other.highlightContent, highlightContent) ||
                other.highlightContent == highlightContent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      createHighlightStatus,
      loadedSourcesStatus,
      const DeepCollectionEquality().hash(_bookResponse),
      const DeepCollectionEquality().hash(_loadedSources),
      selectedBook,
      highlightContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightStateImplCopyWith<_$HighlightStateImpl> get copyWith =>
      __$$HighlightStateImplCopyWithImpl<_$HighlightStateImpl>(
          this, _$identity);
}

abstract class _HighlightState implements HighlightState {
  const factory _HighlightState(
      {final BaseStatus status,
      final BaseStatus createHighlightStatus,
      final BaseStatus loadedSourcesStatus,
      final List<Book> bookResponse,
      final List<HighlightSource> loadedSources,
      final Book? selectedBook,
      final String? highlightContent}) = _$HighlightStateImpl;

  @override
  BaseStatus get status;
  @override
  BaseStatus get createHighlightStatus;
  @override
  BaseStatus get loadedSourcesStatus;
  @override
  List<Book> get bookResponse;
  @override
  List<HighlightSource> get loadedSources;
  @override
  Book? get selectedBook;
  @override
  String? get highlightContent;
  @override
  @JsonKey(ignore: true)
  _$$HighlightStateImplCopyWith<_$HighlightStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
