import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/features/features.dart';
part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    @JsonEnum() required FrequencyValueEnum alertFrequency,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
