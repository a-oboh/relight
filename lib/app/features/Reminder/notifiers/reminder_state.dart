import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/common/notifiers/notifiers.dart';

part 'reminder_state.freezed.dart';

@freezed
class ReminderState with _$ReminderState {
  factory ReminderState({
    @Default(BaseStatus.initial()) BaseStatus status,
  }) = _ReminderState;
}
