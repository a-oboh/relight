import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';

final highlightSourcesRepo = Provider<HighlightSourcesRepository>(
  (ref) => HighlightSourcesRepositoryImpl(ref: ref),
);

abstract class HighlightSourcesRepository {
  Future<void> createSource({
    required String name,
    required String author,
    required DateTime createdAt,
    required String owner,
  });
  Future<void> updateSource({String? name});
}

class HighlightSourcesRepositoryImpl implements HighlightSourcesRepository {
  const HighlightSourcesRepositoryImpl({required this.ref});
  final Ref ref;

  @override
  Future<void> createSource({
    required String name,
    required DateTime createdAt,
    required String author,
    required String owner,
  }) async {
    try {
      await ref
          .watch(dbProvider)
          .collection(CollectionTags.highlightSources.value)
          .add(
            HighlightSource(
              name: name,
              author: author,
              createdAt: createdAt,
              owner: owner,
            ).toJson(),
          );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateSource({String? name}) {
    // TODO: implement updateSource
    throw UnimplementedError();
  }
}
