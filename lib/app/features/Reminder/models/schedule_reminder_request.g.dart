// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_reminder_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleReminderRequest _$ScheduleReminderRequestFromJson(Map json) =>
    ScheduleReminderRequest(
      timeZone: json['timeZone'] as String,
      deviceToken: json['deviceToken'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$ScheduleReminderRequestToJson(
  ScheduleReminderRequest instance,
) =>
    <String, dynamic>{
      'timeZone': instance.timeZone,
      'deviceToken': instance.deviceToken,
      'userId': instance.userId,
    };
