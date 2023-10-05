import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relight/app/common/notifiers/base_status.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(BaseStatus.initial()) BaseStatus status,
    UserCredential? userCredential,
  }) = _AuthState;

  const AuthState._();
}
