part of 'load_arms_bloc.dart';

@immutable
sealed class LoadArmsEvent {
  const LoadArmsEvent();
}

final class ClickButtonOpenFile extends LoadArmsEvent {
  final BuildContext context;
  const ClickButtonOpenFile({required this.context});
}

final class ClickTableRow extends LoadArmsEvent {
  final int row;
  const ClickTableRow({required this.row});
}

final class ChangeTabBar extends LoadArmsEvent {
  final int index;
  const ChangeTabBar({required this.index});
}
