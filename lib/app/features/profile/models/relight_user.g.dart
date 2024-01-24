// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relight_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelightUserImpl _$$RelightUserImplFromJson(Map json) => _$RelightUserImpl(
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      profile: profileFromJson(json['profile'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$RelightUserImplToJson(_$RelightUserImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'displayName': instance.displayName,
      'profile': profileToJson(instance.profile),
    };
