import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';
import 'package:exceler_plus_flutter/features/main/domain/data_source/i_main_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@named
@Singleton(as: IMainDataSource)
class MainDatasourceDbImpl implements IMainDataSource {
  final Isar db;
  MainDatasourceDbImpl(this.db);

  @override
  List<DeadlinesData> getDeadlinesData(String? source) {
    final list = db.deadlinesDatas.where().findAllSync();
    return list;
  }

  @override
  List<DeadlinesData> getDeadlineDataQuarter(int qarter) {
    return db.deadlinesDatas
        .where()
        .quarterEqualToAnyDateOi(qarter)
        .findAllSync();
  }
}
