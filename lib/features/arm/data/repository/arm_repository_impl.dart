import 'package:exceler_plus_flutter/data/isar/arm_bd.dart';
import 'package:exceler_plus_flutter/features/arm/data/dto/arm_dto.dart';
import 'package:exceler_plus_flutter/features/arm/data/i_data_source.dart';
import 'package:exceler_plus_flutter/features/arm/data/datasource/file_data_source_impl.dart';
import 'package:exceler_plus_flutter/features/arm/data/datasource/isar_data_source_impl.dart';
import 'package:exceler_plus_flutter/features/arm/data/i_repository.dart';
import 'package:exceler_plus_flutter/features/arm/domain/usecase/check_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: IRepository)
class ArmRepositoryImpl implements IRepository {
  ArmRepositoryImpl(
    @Named.from(FileDataSourceImpl) this.fileDataSource,
    @Named.from(IsarDataSourceImpl) this.isarDataSource,
    this.pref,
  );
  IDataSource fileDataSource;
  IDataSource isarDataSource;
  SharedPreferences pref;
  static const nidLoad = 'Требуется загрузка';

  @override
  Future<List<ArmDto>> getArms(String? path) {
    if (path != null) {
      final List<String> rows = fileDataSource.getRowsFile(path);
      return checkArms(rows);
    } else {
      final List<ArmBD> arms = isarDataSource.getArms();
      return checkArms([]);
    }
  }

  @override
  Future<String> getPathBD() async {
    final pathDB = pref.getString('path_bd') ?? nidLoad;
    return pathDB;
  }

  @override
  Future<String> getPathFiles() async {
    final pathFiles = pref.getString('path_files') ?? nidLoad;
    return pathFiles;
  }
}
