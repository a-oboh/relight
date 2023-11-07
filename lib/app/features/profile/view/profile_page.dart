import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 24, 8, 4),
          child: Column(
            children: [
              Column(
                children: [
                  ListTile(
                    onTap: () {
                      context.push(RelightRouter.reminderSettings);
                    },
                    leading: const Icon(
                      Icons.alarm,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Reminder Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textGrey,
                      ),
                    ),
                    subtitle: Text(
                      'Customize your reminders',
                      style: AppTextStyles.smallRegular()
                          .copyWith(color: AppColors.textGrey),
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
