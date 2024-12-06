import 'package:exceler_plus_flutter/data/isar/arm_bd.dart';
import 'package:exceler_plus_flutter/features/arm/data/i_data_source.dart';
import 'package:exceler_plus_flutter/features/arm/domain/usecase/my_file.dart';
import 'package:injectable/injectable.dart';

@named
@Singleton(as: IDataSource)
class FileDataSourceImpl implements IDataSource {
  @override
  List<String> getRowsFile(String path) {
    final file = MyFile(path: path);
    return [];
  }

  @override
  List<ArmBD> getArms() {
    // TODO: implement getArms
    throw UnimplementedError();
  }
}
