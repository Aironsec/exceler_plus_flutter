import 'package:bloc/bloc.dart';
import 'package:exceler_plus_flutter/features/main/domain/entity/main_entity.dart';
import 'package:exceler_plus_flutter/features/main/domain/repository/i_main_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';
part 'main_state.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  final IMainRepo repo;
  MainBloc(this.repo) : super(MainInitial(const MainEntity())) {
    on<ChangeTabBarIndex>((event, emit) {
      repo.setIndex(event.tabBarIndex);
    });
  }
}
