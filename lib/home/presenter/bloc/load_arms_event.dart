part of 'load_arms_bloc.dart';

@immutable
sealed class LoadArmsEvent {}

class OpenFile extends LoadArmsEvent {
  final BuildContext context;
  OpenFile(this.context);
}
