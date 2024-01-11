import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/notifiers/base_status.dart';
import 'package:relight/app/features/Reminder/models/schedule_reminder_request.dart';
import 'package:relight/app/features/Reminder/notifiers/reminder_state.dart';
import 'package:relight/app/features/Reminder/repository/repository.dart';

final reminderStateProvider =
    StateNotifierProvider<ReminderStateNotifier, ReminderState>((ref) {
  return ReminderStateNotifier(reminderRepo: ref.read(reminderRepository));
});

class ReminderStateNotifier extends StateNotifier<ReminderState> {
  ReminderStateNotifier({required final ReminderRepository reminderRepo})
      : _reminderRepo = reminderRepo,
        super(ReminderState());

  final ReminderRepository _reminderRepo;

  Future<void> scheduleReminder({required ScheduleReminderRequest body}) async {
    try {
      state = state.copyWith(status: const BaseStatus.loading());
      await _reminderRepo.scheduleReminder(body: body);
      state = state.copyWith(status: const BaseStatus.initial());
    } catch (e) {
      state = state.copyWith(status: const BaseStatus.error());
    }
  }
}
