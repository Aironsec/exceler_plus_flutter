import 'package:bloc/bloc.dart';
import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/auth/domain/repositoty/i_auth_data.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final IAuthData repo;
  UserCubit(this.repo) : super(UserState()) {
    emit(LoadUsers(users: repo.getUsers() ?? []));
  }

  void addNullUser() {
    final users = [...repo.addNullUser(repo.getUsers() ?? [])];
    emit(LoadUsers(users: users));
  }

  void getUsers() {
    emit(LoadUsers(users: repo.getUsers() ?? []));
  }

  void saveUser(User user) {
    repo.saveUser(user);
    emit(LoadUsers(users: repo.getUsers() ?? []));
  }

  void removeUser(User user) {
    repo.removeUser(user);
    emit(LoadUsers(users: repo.getUsers() ?? []));
  }

  void checkChenge(bool? check) {
    emit(CheckChenge(check));
  }
}
