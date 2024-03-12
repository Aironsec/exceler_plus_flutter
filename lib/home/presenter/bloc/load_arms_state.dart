part of 'load_arms_bloc.dart';

enum LoadStatus { good, nofile, noetalon }

sealed class LoadArmsState {
  LoadArmsState({
    this.arms = const <ArmEntity>[],
    this.status = LoadStatus.noetalon,
    required this.pathFile,
  });
  List<ArmEntity> arms;
  final LoadStatus status;
  String pathFile;
}

final class LoadArmsInitial extends LoadArmsState {
  LoadArmsInitial({required super.pathFile});
}
