// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map json) => Profile(
      setTime: Profile._fromJson(json['setTime'] as String?),
      setDate: Profile._fromJson(json['setDate'] as String?),
      dayOfWeek: json['dayOfWeek'] as int?,
      frequencyValue: $enumDecodeNullable(
        _$FrequencyValueEnumEnumMap,
        json['frequencyValue'],
      ),
      fcmToken: json['fcmToken'] as String?,
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'setTime': Profile._toJson(instance.setTime),
      'setDate': Profile._toJson(instance.setDate),
      'frequencyValue': _$FrequencyValueEnumEnumMap[instance.frequencyValue],
      'dayOfWeek': instance.dayOfWeek,
      'fcmToken': instance.fcmToken,
      'timeZone': instance.timeZone,
    };

const _$FrequencyValueEnumEnumMap = {
  FrequencyValueEnum.daily: 'daily',
  FrequencyValueEnum.weekly: 'weekly',
  FrequencyValueEnum.monthly: 'monthly',
};
