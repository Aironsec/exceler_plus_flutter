part of 'auth_cubit.dart';

enum LoginState { login, noLogin, wait, error }

@immutable
class AuthState {
  final UserEntity? user;
  final String? error;
  const AuthState({this.user, this.error});

  factory AuthState.fromJson(Map<String, dynamic> json) {
    return AuthState(user: json["user"], error: json["error"]);
  }

  Map<String, dynamic> toJson() => {
        "user": user,
        "error": error,
      };
}

final class NoLogin extends AuthState {
  const NoLogin() : super(user: null);
}

final class Login extends AuthState {
  const Login(UserEntity user) : super(user: user);
}

final class LoginError extends AuthState {
  const LoginError(String error) : super(user: null, error: error);
}

final class Logout extends AuthState {
  const Logout() : super(user: null);
}
