import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/features/highlights/models/url_metadata_model.dart';

part 'highlight_model.freezed.dart';
part 'highlight_model.g.dart';

@freezed
// @JsonSerializable(explicitToJson: true)
class Highlight with _$Highlight {
  const factory Highlight({
    required String content,
    required String plainContent,
    UrlMetadataModel? urlMetadata,
    required String sourceId,
    required DateTime createdAt,
    required String owner,
    String? id,
  }) = _Highlight;

  factory Highlight.fromJson(Map<String, dynamic> json) =>
      _$HighlightFromJson(json);
}
