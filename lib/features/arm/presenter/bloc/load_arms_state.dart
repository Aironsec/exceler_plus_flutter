part of 'load_arms_bloc.dart';

enum ArmStatus { initial, good, nofile, noetalon }

@immutable
class LoadArmsState {
  const LoadArmsState({
    this.arm = const <ArmDto>[],
    this.status = ArmStatus.initial,
  });
  final List<ArmDto> arm;
  final ArmStatus status;

  LoadArmsState copyWith({
    List<ArmDto>? arm,
    ArmStatus? status,
  }) {
    return LoadArmsState(
      arm: arm ?? this.arm,
      status: status ?? this.status,
    );
  }
}

@immutable
final class LoadArmsInitial extends LoadArmsState {}
