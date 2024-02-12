// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighlightImpl _$$HighlightImplFromJson(Map json) => _$HighlightImpl(
      content: json['content'] as String,
      plainContent: json['plainContent'] as String,
      urlMetadata: json['urlMetadata'] == null
          ? null
          : UrlMetadataModel.fromJson(
              Map<String, dynamic>.from(json['urlMetadata'] as Map),
            ),
      sourceId: json['sourceId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      owner: json['owner'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$HighlightImplToJson(_$HighlightImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'plainContent': instance.plainContent,
      'urlMetadata': instance.urlMetadata?.toJson(),
      'sourceId': instance.sourceId,
      'createdAt': instance.createdAt.toIso8601String(),
      'owner': instance.owner,
      'id': instance.id,
    };
