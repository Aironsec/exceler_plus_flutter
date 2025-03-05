import 'package:exceler_plus_flutter/features/lic/presentation/str_lic.dart';
import 'package:exceler_plus_flutter/features/lic/domain/entity/lic_entity.dart';
import 'package:exceler_plus_flutter/features/lic/domain/repository/i_lic_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'lic_state.dart';
part 'lic_cubit.freezed.dart';
part 'lic_cubit.g.dart';

@injectable
class LicCubit extends HydratedCubit<LicState> {
  ILicData repo;
  LicCubit(this.repo) : super(const LicState.notLic()) {
    repo.fileLicPath() ?? emit(const LicState.error(StrLic.errorLic));
  }

  void registration(String key) async {
    final lic = await repo.getLic(key);
    if (lic == null) {
      emit(const LicState.error(StrLic.errorLic));
    } else {
      final LicEntity? idMachine = await repo.registration(lic);
      idMachine == null
          ? emit(const LicState.error(StrLic.errorReg))
          : emit(LicState.lic(idMachine));
    }
  }

  @override
  LicState? fromJson(Map<String, dynamic> json) {
    final state = LicState.fromJson(json);
    return state.whenOrNull(
      lic: (lic) => LicState.lic(lic),
    );
  }

  @override
  Map<String, dynamic>? toJson(LicState state) => state.toJson();
}
