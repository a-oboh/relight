import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/home/notifiers/navbar_state_notifier.dart';
import 'package:relight/app/features/home/view/home_page.dart';
import 'package:relight/app/features/home/view/widgets/bottom_nav_bar.dart';

class DashboardPage extends ConsumerWidget {
  DashboardPage({super.key});

  final _pages = [
    const HomePage(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navBarNotifProvider).selectedIndex;
    return Scaffold(
      backgroundColor: AppColors.primaryGrey,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(RelightRouter.createHighlight);
        },
        backgroundColor: AppColors.purpleMain,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          // size: 12,
        ),
      ),
      body: _pages[selectedIndex],
      bottomNavigationBar: const BottomAppBar(
        color: AppColors.dark,
        elevation: 5,
        shape: CircularNotchedRectangle(),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        notchMargin: 6,
        child: RelightBottomNav(),
      ),
    );
  }
}
