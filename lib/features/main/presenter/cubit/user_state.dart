part of 'user_cubit.dart';

@immutable
class UserState {}

class LoadUsers extends UserState {
  final List<User> users;
  LoadUsers({required this.users});
}

class CheckChenge extends UserState {
  final bool? check;
  CheckChenge(this.check);
}