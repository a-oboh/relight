import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';
import 'package:relight/app/features/profile/view/widgets/frequency_picker.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(FrequencyValueEnum.daily) FrequencyValueEnum selectedFrequency,
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus reminderPageStatus,
    RelightUser? user,
  }) = _ProfileState;
}

enum FrequencyValueEnum {
  daily('Daily'),
  weekly('Weekly'),
  monthly('Monthly');

  const FrequencyValueEnum(this.value);

  final String value;
}
