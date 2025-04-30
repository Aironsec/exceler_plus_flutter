import 'dart:math';

import 'package:exceler_plus_flutter/features/main/domain/entity/preferences_entity.dart';
import 'package:exceler_plus_flutter/features/main/domain/entity/request_entity.dart';
import 'package:exceler_plus_flutter/features/main/presenter/view_model/main_menu_model.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class PreferencesCubit extends HydratedCubit<PreferencesEntity> {
  PreferencesCubit() : super(const PreferencesEntity());

  void savePreference(PreferencesEntity state) => emit(state);

  bool fileRequest() {
    final request = state.request[state.currentTabMain];
    return request?.active ?? false;
  }

  void generateStateRequest(String fio) {
    const chars = 'abcdefghijklmnopqrstuvwxyz1234567890';
    Random rnd = Random();
    String getRandomString(int length) =>
        String.fromCharCodes(Iterable.generate(
            length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));
    final fileName = switch (state.currentTabMain) {
      MainMenuModel.deadlines => 'DL${getRandomString(5)}.csv',
      MainMenuModel.specification => 'SPEC${getRandomString(5)}.csv',
      MainMenuModel.planeWorks => 'PLAN${getRandomString(5)}.csv',
      MainMenuModel.progressWorks => 'PW${getRandomString(5)}.csv',
      MainMenuModel.bid => 'BID${getRandomString(5)}.csv',
      MainMenuModel.distributionDepartaments => 'DD${getRandomString(5)}.csv',
      MainMenuModel.brit => 'BRIT${getRandomString(5)}.csv',
    };
    final requestState = {
      state.currentTabMain:
          RequestEntity(fileName, DateTime.now().toString(), true, fio)
    };
    emit(state.copyWith(request: requestState));
  }

  @override
  PreferencesEntity? fromJson(Map<String, dynamic> json) =>
      PreferencesEntity.fromJson(json);

  @override
  Map<String, dynamic>? toJson(PreferencesEntity state) => state.toJson();
}
