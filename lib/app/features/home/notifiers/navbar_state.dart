import 'package:freezed_annotation/freezed_annotation.dart';

part 'navbar_state.freezed.dart';

@freezed
class NavbarState with _$NavbarState {
  factory NavbarState({@Default(0) int selectedIndex}) = _NavbarState;
}
