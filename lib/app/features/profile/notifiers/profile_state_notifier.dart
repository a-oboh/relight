import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/Reminder/Reminder.dart';
import 'package:relight/app/features/features.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

final profileStateProvider =
    StateNotifierProvider<ProfileStateNotifier, ProfileState>(
  (ref) => ProfileStateNotifier(
    userRepository: ref.read(userRepoProvider),
    reminderRepo: ref.read(reminderRepository),
    firebaseMessaging: ref.read(messagingProvider),
  ),
);

class ProfileStateNotifier extends StateNotifier<ProfileState> {
  ProfileStateNotifier({
    required UserRepository userRepository,
    required ReminderRepository reminderRepo,
    required FirebaseMessaging firebaseMessaging,
  })  : _userRepository = userRepository,
        _reminderRepo = reminderRepo,
        _firebaseMessaging = firebaseMessaging,
        super(const ProfileState());

  final UserRepository _userRepository;
  final ReminderRepository _reminderRepo;
  final FirebaseMessaging _firebaseMessaging;

  void setFrequencyValue({required FrequencyValueEnum value}) {
    state = state.copyWith(selectedFrequency: value);
  }

  final logger = Logger('profile_notif');

  Future<void> updateReminderSettings({
    required String email,
    DateTime? setDay,
    DateTime? setTime,
  }) async {
    try {
      state = state.copyWith(reminderPageStatus: const BaseStatus.loading());

      final user = await getUser(email: email);
      if (user != null) {
        final fcmToken = await _firebaseMessaging.getToken();
        final timeZone = await FlutterNativeTimezone.getLocalTimezone();

        await _userRepository.updateUser(
          user.copyWith(
            profile: Profile(
              frequencyValue: state.selectedFrequency,
              setDate: setDay,
              setTime: DateTime(DateTime.now().year, 0, 7, 1),
              dayOfWeek: 7,
              fcmToken: fcmToken,
              timeZone: timeZone,
            ),
          ),
        );

        await getUser(email: email);
      }

      // notification permissions
      final notificationSettings =
          await _firebaseMessaging.requestPermission(provisional: true);

      final fcmId = await _firebaseMessaging.getToken();

      // if (state.user?.email != null) {
      //   await _reminderRepo.scheduleReminder(
      //     body: ScheduleReminderRequest(
      //       userId: state.user!.email,
      //       timeZone: 'Africa/Lagos',
      //       deviceToken: fcmId ?? '',
      //     ),
      //   );
      // } else {
      //   state.copyWith(
      //     reminderPageStatus:
      //         const BaseStatus.error(errorText: 'Could not contact server'),
      //   );
      // }

      state.copyWith(reminderPageStatus: const BaseStatus.initial());
    } catch (e) {
      if (e is DioException) {
        state = state.copyWith(
          reminderPageStatus:
              const BaseStatus.error(errorText: 'Error setting scheduled time'),
        );
      }
      logger.severe('error updating messages - $e');
      state = state.copyWith(
        reminderPageStatus:
            const BaseStatus.error(errorText: 'Could not update settings'),
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
      state = state.copyWith(status: const BaseStatus.loading());
      final user = await _userRepository.getUser(email: email);
      state = state.copyWith(
        user: user,
        status: const BaseStatus.initial(),
        selectedFrequency:
            user?.profile?.frequencyValue ?? FrequencyValueEnum.daily,
      );
      return user;
    } catch (e) {
      logger.severe(e);
      state = state.copyWith(status: const BaseStatus.error());
    }
    return null;
  }

  Future<void> updateUser(RelightUser user) async {
    try {
      await _userRepository.updateUser(user);
    } catch (e) {
      rethrow;
    }
  }
}
