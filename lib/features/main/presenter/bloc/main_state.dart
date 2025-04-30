part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.deadlinesData(Map<int, List<DeadlinesData>> data) = _DeadLinesData;
}
