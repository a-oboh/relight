import 'package:freezed_annotation/freezed_annotation.dart';

part 'highlight_source.freezed.dart';
part 'highlight_source.g.dart';

@freezed
class HighlightSource with _$HighlightSource {
  const factory HighlightSource({
    required String name,
    required String author,
    String? id,
    @Default('') String owner,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _HighlightSource;

  factory HighlightSource.fromJson(Map<String, dynamic> json) =>
      _$HighlightSourceFromJson(json);
}
