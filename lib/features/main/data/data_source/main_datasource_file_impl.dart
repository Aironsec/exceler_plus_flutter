import 'dart:io';

import 'package:exceler_plus_flutter/features/main/data/file/deadlines_file.dart';
import 'package:exceler_plus_flutter/features/main/domain/data_source/i_main_data_source.dart';
import 'package:injectable/injectable.dart';

@named
@Singleton(as: IMainDataSource)
class MainDatasourceFileImpl extends IMainDataSource {
  @override
  List<DeadlinesFile> getDeadlinesData(String pathFile) {
    final list = <DeadlinesFile>[];
    final listRow = File(pathFile).readAsLinesSync();
    for (final row in listRow) {
      final rowSplit = row.split(',');
      final oi = rowSplit[DeadlinesFile.oiCol].trim();
      final date = rowSplit[DeadlinesFile.dateCol].trim();
      final attestat = rowSplit[DeadlinesFile.attestatCol].trim();
      list.add(DeadlinesFile()
        ..oiFile = oi
        ..dateFile = date
        ..attestatFile = attestat);
    }
    return list;
  }
}
