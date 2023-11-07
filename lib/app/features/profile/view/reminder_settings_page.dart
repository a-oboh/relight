import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/common/extensions/context_extension.dart';
import 'package:relight/app/features/features.dart';

class ReminderSettingsPage extends ConsumerWidget {
  const ReminderSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Customize Your \nReminder Settings 📅',
                style: AppTextStyles.largeBold(),
              ),
              const Gap(20),
              Text(
                context.localization.reminderFrequency,
                style: AppTextStyles.mediumSemiBold(),
              ),
              const SizedBox(
                height: 14,
              ),
              const FrequencyPicker(),
              const Gap(8),
              const Divider(
                thickness: 3,
              ),
              const Gap(8),
              Row(
                children: [
                  Text(
                    context.localization.emailReminders,
                    style: AppTextStyles.mediumSemiBold(),
                  ),
                  const Gap(12),
                  CupertinoSwitch(value: false, onChanged: (value) {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
