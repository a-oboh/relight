import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:relight/app/common/utils/utils.dart';
import 'package:relight/app/features/profile/models/relight_user.dart';

class UserRepository {
  UserRepository({required this.db});

  final FirebaseFirestore db;

  Future<void> saveUser({required RelightUser user}) async {
    try {
      await db
          .collection(CollectionTags.users.value)
          .doc(user.email)
          .set(user.toJson());
    } catch (e) {
      rethrow;
    }
  }

  Future<RelightUser> getUser({required String email}) async {
    try {
      final snap =
          await db.collection(CollectionTags.users.value).doc(email).get();

      return RelightUser.fromJson(snap.data() ?? {});
    } catch (e) {
      rethrow;
    }
  }
}
