import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus deleteHighlightStatus,
    @Default(<Highlight>[]) List<Highlight> highlights,
  }) = _HomeState;
}
