import 'package:freezed_annotation/freezed_annotation.dart';

part 'highlight_model.freezed.dart';
part 'highlight_model.g.dart';

@freezed
class Highlight with _$Highlight {
  const factory Highlight({
    required String content,
    required String sourceId,
    required DateTime createdAt,
    required String owner,
    String? id,
  }) = _Highlight;

  factory Highlight.fromJson(Map<String, dynamic> json) =>
      _$HighlightFromJson(json);
}
