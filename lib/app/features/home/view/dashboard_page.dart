import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  //TODO(albert): move to view model
  final _pages = [
    const HomePage(),
    const Placeholder(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeStateProvider.notifier).loadHighlights();
    });
  }

  @override
  void dispose() {
    ref.invalidate(homeStateProvider);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
