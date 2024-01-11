import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/Reminder/models/schedule_reminder_request.dart';
import 'package:relight/app/features/Reminder/models/schedule_reminder_res.dart';

final reminderRepository = Provider<ReminderRepository>((ref) {
  return ReminderRepositoryImpl(dio: ref.read(dioProvider));
});

abstract class ReminderRepository {
  Future<ScheduleReminderRes?> scheduleReminder({
    required ScheduleReminderRequest body,
  }) async {
    return null;
  }
}

class ReminderRepositoryImpl implements ReminderRepository {
  ReminderRepositoryImpl({required this.dio});

  final Dio dio;

  @override
  Future<ScheduleReminderRes?> scheduleReminder({
    required ScheduleReminderRequest body,
  }) async {
    try {
      final res =
          await dio.post(ApiConstsants.scheduleReminder, data: body.toJson());

      if (res.statusCode == 200) {
        return ScheduleReminderRes.fromJson(res.data as Map<String, dynamic>);
      }

      return null;
    } catch (e) {
      rethrow;
    }
  }
}
