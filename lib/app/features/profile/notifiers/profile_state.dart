import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/features/profile/view/widgets/frequency_picker.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(FrequencyValueEnum.daily) selectedFrequency,
  }) = _ProfileState;
}
