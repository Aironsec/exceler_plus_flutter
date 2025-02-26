part of 'auth_cubit.dart';

@freezed
sealed class AuthState with _$AuthState {
  factory AuthState.notAuthorized() = _AuthStateNotAuthorized;

  factory AuthState.authorized(UserEntity user) = _AuthStateAuthorized;

  factory AuthState.error(String error) = _AuthStateError;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
