// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighlightImpl _$$HighlightImplFromJson(Map<String, dynamic> json) =>
    _$HighlightImpl(
      content: json['content'] as String,
      plainContent: json['plainContent'] as String,
      sourceId: json['sourceId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      owner: json['owner'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$HighlightImplToJson(_$HighlightImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'plainContent': instance.plainContent,
      'sourceId': instance.sourceId,
      'createdAt': instance.createdAt.toIso8601String(),
      'owner': instance.owner,
      'id': instance.id,
    };
