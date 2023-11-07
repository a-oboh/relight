import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/profile/profile.dart';

class FrequencyPicker extends StatelessWidget {
  const FrequencyPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(4),
      child: const DefaultTextStyle(
        style: TextStyle(
          color: AppColors.lightGrey,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FrequencyPickerItem(
              value: FrequencyValueEnum.daily,
            ),
            FrequencyPickerItem(
              value: FrequencyValueEnum.weekly,
            ),
            FrequencyPickerItem(
              value: FrequencyValueEnum.monthly,
            ),
          ],
        ),
      ),
    );
  }
}

class FrequencyPickerItem extends ConsumerWidget {
  const FrequencyPickerItem({
    required this.value,
    super.key,
  });

  final FrequencyValueEnum value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileStateProvider);

    return InkWell(
      onTap: () => ref
          .read(profileStateProvider.notifier)
          .setFrequencyValue(value: value),
      child: Container(
        decoration: BoxDecoration(
          color: profileState.selectedFrequency == value
              ? AppColors.purple2
              : null,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 11,
        ),
        child: Center(
          child: Text(
            value.value,
            style: TextStyle(
              color: profileState.selectedFrequency == value
                  ? Colors.white
                  : AppColors.secondaryGrey,
              fontSize: 10,
              fontWeight: profileState.selectedFrequency == value
                  ? FontWeight.bold
                  : FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

enum FrequencyValueEnum {
  daily('Daily'),
  weekly('Weekly'),
  monthly('Monthly');

  const FrequencyValueEnum(this.value);

  final String value;
}
