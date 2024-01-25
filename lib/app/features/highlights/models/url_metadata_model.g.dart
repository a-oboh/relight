// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_metadata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UrlMetadataModelImpl _$$UrlMetadataModelImplFromJson(Map json) =>
    _$UrlMetadataModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      duration: json['duration'] as int,
      domain: json['domain'] as String,
      favicon: json['favicon'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$UrlMetadataModelImplToJson(
        _$UrlMetadataModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'duration': instance.duration,
      'domain': instance.domain,
      'favicon': instance.favicon,
      'url': instance.url,
    };
