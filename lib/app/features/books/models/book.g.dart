// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooksImpl _$$BooksImplFromJson(Map json) => _$BooksImpl(
      kind: json['kind'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Book.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const <Book>[],
    );

Map<String, dynamic> _$$BooksImplToJson(_$BooksImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$BookImpl _$$BookImplFromJson(Map json) => _$BookImpl(
      kind: json['kind'] as String,
      id: json['id'] as String,
      etag: json['etag'] as String,
      selfLink: json['selfLink'] as String,
      volumeInfo: VolumeInfo.fromJson(
          Map<String, dynamic>.from(json['volumeInfo'] as Map)),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'id': instance.id,
      'etag': instance.etag,
      'selfLink': instance.selfLink,
      'volumeInfo': instance.volumeInfo.toJson(),
    };

_$VolumeInfoImpl _$$VolumeInfoImplFromJson(Map json) => _$VolumeInfoImpl(
      title: json['title'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$VolumeInfoImplToJson(_$VolumeInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
    };
