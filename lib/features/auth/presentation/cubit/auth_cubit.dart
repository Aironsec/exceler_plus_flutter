import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:exceler_plus_flutter/features/auth/domain/repositoty/i_auth_data.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/str_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthData repo;
  AuthCubit(this.repo) : super(AuthState.notAuthorized());

  void login({required String name, required String password}) async {
    final user = await repo.getUser(name, password);
    user == null
        ? emit(AuthState.error(StrAuth.error))
        : emit(AuthState.authorized(user));
  }

  void logout() => emit(AuthState.notAuthorized());
}
