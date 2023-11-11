// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relight_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RelightUser _$$_RelightUserFromJson(Map<String, dynamic> json) =>
    _$_RelightUser(
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RelightUserToJson(_$_RelightUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'displayName': instance.displayName,
      'profile': instance.profile,
    };
