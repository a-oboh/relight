import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/features/features.dart';

part 'profile_data.g.dart';

@JsonSerializable()
class Profile {
  Profile({
    this.setTime,
    this.setDate,
    this.dayOfWeek,
    this.frequencyValue,
    this.fcmToken,
    this.timeZone,
  });
  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);

  @JsonKey(toJson: _toJson, fromJson: _fromJson)
  final DateTime? setTime;
  @JsonKey(toJson: _toJson, fromJson: _fromJson)
  final DateTime? setDate;
  @Default(FrequencyValueEnum.daily)
  FrequencyValueEnum? frequencyValue;
  final int? dayOfWeek;
  final String? fcmToken;
  final String? timeZone;

  static String? _toJson(DateTime? value) => value?.toIso8601String();
  static DateTime? _fromJson(String? value) {
    if (value != null) {
      return DateTime.parse(value);
    }
    return null;
  }
}
