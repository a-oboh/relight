import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule_reminder_request.g.dart';

@JsonSerializable()
class ScheduleReminderRequest extends Equatable {
  const ScheduleReminderRequest({
    required this.timeZone,
    required this.deviceToken,
    required this.userId,
  });

  final String timeZone;
  final String deviceToken;
  final String userId;

  factory ScheduleReminderRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleReminderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleReminderRequestToJson(this);

  @override
  List<Object?> get props => [timeZone];
}
