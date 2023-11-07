import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/features/features.dart';

final profileStateProvider =
    StateNotifierProvider<ProfileStateNotifier, ProfileState>(
        (ref) => ProfileStateNotifier());

class ProfileStateNotifier extends StateNotifier<ProfileState> {
  ProfileStateNotifier() : super(const ProfileState());

  void setFrequencyValue({required FrequencyValueEnum value}) {
    state = state.copyWith(selectedFrequency: value);
  }
}
