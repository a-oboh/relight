import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/features/home/notifiers/navbar_state.dart';

final navBarNotifProvider = StateNotifierProvider<NavBarNotifier, NavbarState>(
  (ref) => NavBarNotifier(),
);

class NavBarNotifier extends StateNotifier<NavbarState> {
  NavBarNotifier() : super(NavbarState());

  void setSelectedIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}
