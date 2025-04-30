import 'package:bloc/bloc.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';
import 'package:exceler_plus_flutter/features/main/domain/repository/i_main_repo.dart';
import 'package:exceler_plus_flutter/features/main/presenter/view_model/main_menu_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  IMainRepo repo;
  MainBloc(this.repo) : super(const _Initial()) {
    on<MainEvent>((event, emit) {
      event.when(
        getData: (menuItem) => switch (menuItem) {
          MainMenuModel.deadlines =>
            emit(MainState.deadlinesData(repo.getDeadlineDataAll())),
          MainMenuModel.specification =>
            throw UnimplementedError(), //repo.getSpecificationData(),
          MainMenuModel.planeWorks => throw UnimplementedError(),
          MainMenuModel.progressWorks => throw UnimplementedError(),
          MainMenuModel.bid => throw UnimplementedError(),
          MainMenuModel.distributionDepartaments => throw UnimplementedError(),
          MainMenuModel.brit => throw UnimplementedError(),
        },
        started: () {
          emit(MainState.deadlinesData(repo.getDeadlineDataAll()));
        },
        loadFileData: (String nameFile) {},
      );
    });
  }
}
