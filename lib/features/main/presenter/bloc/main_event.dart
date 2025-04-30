part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = _Started;
  const factory MainEvent.getData(MainMenuModel menuItem) = _MainEventGetData;
  const factory MainEvent.loadFileData(String nameFile) = _MainEventRequestData;
}
