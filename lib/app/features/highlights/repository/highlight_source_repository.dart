import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';

final highlightSourcesRepo = Provider<HighlightSourcesRepository>(
  (ref) => HighlightSourcesRepositoryImpl(
    db: ref.read(dbProvider),
  ),
);

abstract class HighlightSourcesRepository {
  Future<void> createSource({
    required HighlightSource source,
  });
  Future<void> updateSource({String? name});
  Future<HighlightSource> getSourceFromId(String id);
}

class HighlightSourcesRepositoryImpl implements HighlightSourcesRepository {
  const HighlightSourcesRepositoryImpl({required this.db});

  final FirebaseFirestore db;

  @override
  Future<void> createSource({required HighlightSource source}) async {
    try {
      await db.collection(CollectionTags.highlightSources.value).add(
            source.toJson(),
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

  @override
  Future<HighlightSource> getSourceFromId(String id) async {
    final sourceRef = await db
        .collection(CollectionTags.highlightSources.value)
        .doc(id)
        .get();

    return HighlightSource.fromJson(sourceRef.data()!);
  }
}
