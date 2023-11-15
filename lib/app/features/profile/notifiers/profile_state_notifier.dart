import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/notifiers/base_status.dart';
import 'package:relight/app/features/features.dart';

final profileStateProvider =
    StateNotifierProvider<ProfileStateNotifier, ProfileState>(
  (ref) => ProfileStateNotifier(
    userRepository: ref.read(userRepoProvider),
  ),
);

class ProfileStateNotifier extends StateNotifier<ProfileState> {
  ProfileStateNotifier({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const ProfileState());

  final UserRepository _userRepository;

  void loadInitialFrequency() {}

  void setFrequencyValue({required FrequencyValueEnum value}) {
    state = state.copyWith(selectedFrequency: value);
  }

  updateReminderSettings({required String email}) async {
    try {
      state = state.copyWith(reminderPageStatus: BaseStatus.loading());

      final user = await getUser(email: email);

      await _userRepository.updateUser(
        RelightUser(
          email: email,
          displayName: user?.displayName ?? '',
          profile: Profile(alertFrequency: state.selectedFrequency),
        ),
      );

      await getUser(email: email);
      state.copyWith(reminderPageStatus: BaseStatus.initial());
    } catch (e) {
      state = state.copyWith(
        reminderPageStatus:
            const BaseStatus.error(errorText: "Could not update settings"),
      );
    }
  }

  Future<void> saveProfileUser({required RelightUser user}) async {
    try {
      await _userRepository.saveUser(user);
    } catch (e) {
      state = state.copyWith(status: const BaseStatus.error());
    }
  }

  Future<RelightUser?> getUser({required String email}) async {
    try {
      state = state.copyWith(status: BaseStatus.loading());
      final user = await _userRepository.getUser(email: email);
      state = state.copyWith(
        user: user,
        status: BaseStatus.initial(),
        selectedFrequency:
            user?.profile?.alertFrequency ?? FrequencyValueEnum.daily,
      );
      return user;
    } catch (e) {
      state = state.copyWith(status: BaseStatus.error());
    }
  }

  Future<void> updateUser(RelightUser user) async {
    try {
      await _userRepository.updateUser(user);
    } catch (e) {
      rethrow;
    }
  }
}
