// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_metadata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UrlMetadataModelImpl _$$UrlMetadataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UrlMetadataModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      duration: json['duration'] as int,
      domain: json['domain'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$UrlMetadataModelImplToJson(
        _$UrlMetadataModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageUrls': instance.imageUrls,
      'duration': instance.duration,
      'domain': instance.domain,
      'url': instance.url,
    };
