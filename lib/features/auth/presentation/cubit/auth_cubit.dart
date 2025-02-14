import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit() : super(const NoLogin());

  void login() =>
      emit(const Login(UserEntity(login: 'Привет', password: 'password')));

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    if (state is Login) {
      return state.toJson();
    }
    return null;
  }
}
