part of 'main_bloc.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {
  final MainEntity state;
  MainInitial(this.state);
}
