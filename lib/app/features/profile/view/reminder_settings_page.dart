import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class ReminderSettingsPage extends ConsumerStatefulWidget {
  const ReminderSettingsPage({super.key, this.user});

  final RelightUser? user;

  @override
  ConsumerState<ReminderSettingsPage> createState() =>
      _ReminderSettingsPageState();
}

class _ReminderSettingsPageState extends ConsumerState<ReminderSettingsPage> {
  @override
  void initState() {
    // Trying to ensure there is a vllue for user object in provider
    if (widget.user == null) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        await ref
            .read(profileStateProvider.notifier)
            .getUser(email: ref.read(userProvider).value?.email ?? '');
      });
    }
    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context)?.settings.name;
    final isDialog = ModalRoute.of(context)?.opaque;

    ref.listen(profileStateProvider, (prev, next) {
      if (next.reminderPageStatus.isLoading &&
          route == RelightRouter.reminderSettings) {
        if (isDialog != true) {
          LoadingDialog.show(context: context, dismissable: true);
        }
      }
      // else if (prev!.reminderPageStatus.isLoading &&
      //     !next.reminderPageStatus.isLoading &&
      //     route == RelightRouter.reminderSettings) {
      //   if (isDialog ?? false) {
      //     context.pop();
      //   }
      // }
      else if (next.reminderPageStatus is ErrorBaseStatus) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('error')));
      }
    });

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
              const Spacer(),
              Align(
                child: AppBasicButton(
                  title: 'Done',
                  onTap: () {
                    ref
                        .read(profileStateProvider.notifier)
                        .updateReminderSettings(
                          email: ref.read(userProvider).value?.email ?? '',
                        );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
