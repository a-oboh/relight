// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HighlightSource _$$_HighlightSourceFromJson(Map<String, dynamic> json) =>
    _$_HighlightSource(
      name: json['name'] as String,
      author: json['author'] as String,
      id: json['id'] as String?,
      owner: json['owner'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_HighlightSourceToJson(_$_HighlightSource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'author': instance.author,
      'id': instance.id,
      'owner': instance.owner,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
