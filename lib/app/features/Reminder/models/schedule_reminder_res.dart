import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_reminder_res.freezed.dart';
part 'schedule_reminder_res.g.dart';

@freezed
class ScheduleReminderRes with _$ScheduleReminderRes {
  const factory ScheduleReminderRes({
    required String status,
    required String message,
  }) = _ScheduleReminderRes;

  factory ScheduleReminderRes.fromJson(Map<String, dynamic> json) =>
      _$ScheduleReminderResFromJson(json);
}
