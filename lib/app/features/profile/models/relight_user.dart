import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/features/profile/models/profile.dart';

part 'relight_user.freezed.dart';
part 'relight_user.g.dart';

/// The internal model for user and profiles
@freezed
class RelightUser with _$RelightUser {
  const factory RelightUser({
    required String email,
    required String displayName,
    Profile? profile,
  }) = _RelightUser;

  factory RelightUser.fromJson(Map<String, dynamic> json) =>
      _$RelightUserFromJson(json);
}
