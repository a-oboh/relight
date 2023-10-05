import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/home/notifiers/navbar_state_notifier.dart';

class RelightBottomNav extends ConsumerWidget {
  const RelightBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        final selectedIndex = ref.watch(navBarNotifProvider).selectedIndex;

        return Row(
          children: [
            RelightBottomNavBarItem(
              icon: IconlyBold.home,
              title: 'Home',
              onTap: () =>
                  ref.read(navBarNotifProvider.notifier).setSelectedIndex(0),
              color: selectedIndex == 0 ? AppColors.purpleMain : Colors.white,
            ),
            SizedBox(width: width * 0.1),
            RelightBottomNavBarItem(
              onTap: () =>
                  ref.read(navBarNotifProvider.notifier).setSelectedIndex(1),
              icon: Icons.bookmarks_rounded,
              title: 'Collections',
              color: selectedIndex == 1 ? AppColors.purpleMain : Colors.white,
            ),
            const Spacer(),
            RelightBottomNavBarItem(
              onTap: () =>
                  ref.read(navBarNotifProvider.notifier).setSelectedIndex(2),
              icon: IconlyBold.profile,
              title: 'Profile',
              color: selectedIndex == 2 ? AppColors.purpleMain : Colors.white,
            ),
          ],
        );
      },
    );
  }
}

class RelightBottomNavBarItem extends ConsumerWidget {
  const RelightBottomNavBarItem({
    required this.icon,
    required this.title,
    required this.onTap,
    required this.color,
    super.key,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            title,
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
