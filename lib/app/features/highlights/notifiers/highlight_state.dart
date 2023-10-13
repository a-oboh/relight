import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/books/books.dart';

part 'highlight_state.freezed.dart';

@freezed
class HighlightState with _$HighlightState {
  const factory HighlightState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus createHighlightStatus,
    @Default(BaseStatus.initial()) BaseStatus loadedSourcesStatus,
    @Default(<Book>[]) List<Book> bookResponse,
    @Default(<HighlightSource>[]) List<HighlightSource> loadedSources,
    Book? selectedBook,
    String? highlightContent,
  }) = _HighlightState;
}

extension HighlightStateEx on HighlightState {
  bool get isLoading => status is LoadingBaseStatus;
  bool get isCreatingHighlight => createHighlightStatus is LoadingBaseStatus;
  bool get isLoadingSources => loadedSourcesStatus is LoadingBaseStatus;
}
