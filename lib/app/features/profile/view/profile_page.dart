import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref
          .read(profileStateProvider.notifier)
          .getUser(email: ref.read(userProvider).value?.email ?? '');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(profileStateProvider, (prev, next) {
      final route = ModalRoute.of(context)?.settings.name;
      if (next.status.isLoading) {
        // print(GoRouter.of(context).routeInformationProvider.value.uri.path);

        if (route == RelightRouter.homeRoute) {
          LoadingDialog.show(context: context);
        }
      } else if (prev!.status.isLoading && !next.status.isLoading) {
        if (route == RelightRouter.homeRoute) {
          context.pop();
        }
      }
    });

    final profileState = ref.watch(profileStateProvider);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 24, 8, 4),
          child: Column(
            children: [
              Column(
                children: [
                  SettinngItem(
                    onTap: () {
                      context.push(
                        RelightRouter.reminderSettings,
                        extra: profileState.user,
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      ref
                          .read(authStateNotifierProvider.notifier)
                          .logout(context);
                    },
                    leading: const Icon(
                      Icons.logout_sharp,
                      color: Colors.red,
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettinngItem extends StatelessWidget {
  const SettinngItem({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
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
        style: AppTextStyles.smallRegular().copyWith(color: AppColors.textGrey),
      ),
    );
  }
}
