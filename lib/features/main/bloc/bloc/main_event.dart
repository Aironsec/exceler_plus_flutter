part of 'main_bloc.dart';

@immutable
sealed class MainEvent {}

class ChangeTabBarIndex extends MainEvent {
  final int tabBarIndex;
  ChangeTabBarIndex({
    required this.tabBarIndex,
  });
}
