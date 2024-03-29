import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/profile/models/relight_user.dart';

final userRepoProvider = Provider.autoDispose(
  (ref) => UserRepository(db: ref.read(dbProvider)),
);

class UserRepository {
  UserRepository({required FirebaseFirestore db}) : _db = db;

  final FirebaseFirestore _db;

  Future<void> saveUser(RelightUser user) async {
    try {
      await _db
          .collection(CollectionTags.users.value)
          .doc(user.email)
          .set(user.toJson());
    } catch (e) {
      rethrow;
    }
  }

  Future<RelightUser?> getUser({required String email}) async {
    try {
      final snap =
          await _db.collection(CollectionTags.users.value).doc(email).get();

      final user = RelightUser.fromJson(snap.data() ?? {});

      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateUser(RelightUser user) async {
    try {
      // TODO: convert to transaction
      final ref = _db.collection(CollectionTags.users.value).doc(user.email);

      await ref.update(user.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
