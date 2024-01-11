import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/providers/app_providers.dart';
import 'package:relight/app/features/books/models/book.dart';

final bookSourceRepo = Provider<BookSourceRepository>((ref) {
  return BookSourceRepositoryImpl(dio: ref.read(dioProvider));
});

abstract class BookSourceRepository {
  Future<Books?> findBook({required String name}) async {
    return null;
  }
}

class BookSourceRepositoryImpl implements BookSourceRepository {
  BookSourceRepositoryImpl({required this.dio});

  final Dio dio;
  final googleApiKey = dotenv.env['GOOGLE_API_KEY'];

  @override
  Future<Books?> findBook({required String name}) async {
    try {
      final res = await dio.get(
        'https://www.googleapis.com/books/v1/volumes?q=$name&key=$googleApiKey',
      );

      if (res.statusCode == 200) {
        return Books.fromJson(res.data as Map<String, dynamic>);
      }

      return null;
    } catch (e) {
      rethrow;
    }
  }
}
