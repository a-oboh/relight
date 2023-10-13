// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Highlight _$$_HighlightFromJson(Map<String, dynamic> json) => _$_Highlight(
      content: json['content'] as String,
      sourceId: json['sourceId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      owner: json['owner'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_HighlightToJson(_$_Highlight instance) =>
    <String, dynamic>{
      'content': instance.content,
      'sourceId': instance.sourceId,
      'createdAt': instance.createdAt.toIso8601String(),
      'owner': instance.owner,
      'id': instance.id,
    };
