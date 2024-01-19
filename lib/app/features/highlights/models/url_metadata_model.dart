import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_metadata_model.freezed.dart';
part 'url_metadata_model.g.dart';

@freezed
class UrlMetadataModel with _$UrlMetadataModel {
  const factory UrlMetadataModel({
    required String title,
    required String description,
    required List<String> imageUrls,
    required int duration,
    required String domain,
    required String url,
  }) = _UrlMetadataModel;

  factory UrlMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$UrlMetadataModelFromJson(json);
}
