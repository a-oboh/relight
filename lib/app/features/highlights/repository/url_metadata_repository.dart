import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/highlights/models/url_metadata_model.dart';

final urlMetadataRepository = Provider((ref) {
  final dio = ref.read(dioProvider);
  return UrlMetadataRepository(dio: dio);
});

class UrlMetadataRepository {
  UrlMetadataRepository({required this.dio});

  final Dio dio;

  //extract json with jsonLink.io api
  Future<UrlMetadataModel?> extractMetaData(String url) async {
    try {
      final apiKey = dotenv.env['JSON_LINK_API_KEY'];
      final response = await dio
          .get('https://jsonlink.io/api/extract?url=$url&api_key=$apiKey');

      if (response.statusCode == 200) {
        return UrlMetadataModel.fromJson(response.data as Map<String, dynamic>);
      }

      return null;
    } catch (e) {
      rethrow;
    }
  }
}
