import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Books with _$Books {
  const factory Books({
    required String kind,
    @Default(<Book>[]) List<Book> items,
  }) = _Books;

  factory Books.fromJson(Map<String, dynamic> json) => _$BooksFromJson(json);
}

@freezed
class Book with _$Book {
  const factory Book({
    required String kind,
    required String id,
    required String etag,
    required String selfLink,
    required VolumeInfo volumeInfo,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    required String title,
    required List<String> authors,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}
