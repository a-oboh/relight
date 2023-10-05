import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/highlights/models/highlight_model.dart';

final highlightRepoProvider = Provider(HighlightsRepository.new);

class HighlightsRepository {
  HighlightsRepository(this.ref);

  final Ref ref;

  Future<void> createHighlight({
    required String content,
    required DateTime date,
    required String sourceId,
  }) async {
    try {
      final highlightsRef =
          ref.watch(dbProvider).collection(CollectionTags.highlights.value);

      await highlightsRef.add(
        Highlight(
          content: content,
          createdAt: date,
          sourceId: sourceId,
        ).toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }
}
