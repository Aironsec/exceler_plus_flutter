import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:exceler_plus_flutter/features/auth/domain/repositoty/i_auth_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

@injectable
class AuthCubit extends HydratedCubit<AuthState> {
  final IAuthData repo;
  AuthCubit(this.repo) : super(AuthState.notAuthorized()) {
    repo.getLic() == null
        ? emit(AuthState.error('Лицензия отсутствует'))
        : emit(AuthState.notAuthorized());
  }

  // static AuthState get stateInit {
  //   final fileLic = '${Directory.current.path}/license.isar';
  //   if (File(fileLic).existsSync()) {
  //     return AuthState.notAuthorized();
  //   }
  //   return AuthState.error('Лицензия отсутствует');
  // }

  login(String token) async {
    final user = await repo.getUser(token);
    user == null
        ? emit(AuthState.error('Не верное имя ли пароль'))
        : emit(AuthState.authorized(user));
  }

  void logout() => emit(AuthState.notAuthorized());

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);
    return state.whenOrNull(
      authorized: (user) => AuthState.authorized(user),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }
}
