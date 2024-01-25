import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/highlights/models/highlight_model.dart';

final highlightRepoProvider = Provider((ref) {
  final db = ref.read(dbProvider);

  return HighlightsRepository(
    db: db,
  );
});

class HighlightsRepository {
  HighlightsRepository({
    required this.db,
  });

  final FirebaseFirestore db;

  Future<void> createHighlight({
    required Highlight highlight,
  }) async {
    try {
      final highlightsRef = db.collection(CollectionTags.highlights.value);

      log(highlight.toJson().toString());

      await highlightsRef.add(
        highlight.toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Highlight>> getHighlights({required User user}) async {
    //TODO(albert): add pagination for performance with firebase limits
    try {
      final highlightsRef = await db
          .collection(CollectionTags.highlights.value)
          .where('owner', isEqualTo: user.email)
          .get();

      final highlights = <Highlight>[];

      for (final doc in highlightsRef.docs) {
        highlights.add(Highlight.fromJson(doc.data()).copyWith(id: doc.id));
      }

      return highlights;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteHighlight(String id) async {
    try {
      // consider soft delete methods
      await db.collection(CollectionTags.highlights.value).doc(id).delete();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> editHighlight(String id, Highlight newHighlight) async {
    try {
      await db
          .collection(CollectionTags.highlights.value)
          .doc(id)
          .update(newHighlight.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
