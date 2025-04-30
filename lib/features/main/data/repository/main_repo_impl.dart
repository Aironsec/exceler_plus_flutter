import 'package:exceler_plus_flutter/features/main/data/data_source/main_datasource_db_impl.dart';
import 'package:exceler_plus_flutter/features/main/data/data_source/main_datasource_file_impl.dart';
import 'package:exceler_plus_flutter/features/main/data/file/deadlines_file.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/specification_data.dart';
import 'package:exceler_plus_flutter/features/main/domain/data_source/i_main_data_source.dart';
import 'package:exceler_plus_flutter/features/main/domain/entity/item_face.dart';
import 'package:exceler_plus_flutter/features/main/domain/repository/i_main_repo.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IMainRepo)
class MainRepoImpl implements IMainRepo {
  IMainDataSource dbSourse;
  IMainDataSource fileSourse;
  MainRepoImpl(@Named.from(MainDatasourceDbImpl) this.dbSourse,
      @Named.from(MainDatasourceFileImpl) this.fileSourse);

  @override
  Map<int, List<DeadlinesData>> getDeadlineDataAll() {
    Map<int, List<DeadlinesData>> result = {};
    for (var i = 1; i <= 4; i++) {
      result[i] = dbSourse.getDeadlineDataQuarter(i);
    }
    return result;
  }

  @override
  Map<int, List<ItemFace>> getRowsDeadlineData(String filePath) {
    final sempleCheckNameOi = RegExp(
        r'(^\d{2,3}[-]\d{1,3}[-][Q|А-Я]+\d[-]?\d?|^[А-Я]{2,4}[-][А-Я|\w]{1,3}[\/\]?[-]?[Q|А-Я]?\d[-]?\d?|^\d{2}[-][А-Я]{3}\d)|([ВП]{2}[[:space:]][ГК]{2}[-][А-Я]{2,3}|[ВП]{2}[[:space:]]\d{2}[-]\d{2,3}|[ВП]{2}[[:space:]]\d{2,3})');
    Map<int, List<ItemFace>> result = {};
    final fileRows =
        fileSourse.getDeadlinesData(filePath) as List<DeadlinesFile>;
    for (var i = 0; i < fileRows.length; i++) {
      final oiItem = fileRows[i].oiFile;
      if (oiItem == null) {
        final oiResult = ItemFace();
      } else {
        if (sempleCheckNameOi.hasMatch(oiItem)) {
          final oiResult = ItemFace()..item = oiItem..style = ItemStyle.fresh;
        }
      }
      
    }
    return result;
  }

  @override
  Future<List<SpecificationData>> getSpecificationData() {
    // TODO: implement getSpecificationData
    throw UnimplementedError();
  }
}
