// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      alertFrequency:
          $enumDecode(_$FrequencyValueEnumEnumMap, json['alertFrequency']),
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'alertFrequency': _$FrequencyValueEnumEnumMap[instance.alertFrequency]!,
    };

const _$FrequencyValueEnumEnumMap = {
  FrequencyValueEnum.daily: 'daily',
  FrequencyValueEnum.weekly: 'weekly',
  FrequencyValueEnum.monthly: 'monthly',
};
