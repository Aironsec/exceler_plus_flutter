import 'package:exceler_plus_flutter/data/isar/arm_bd.dart';
import 'package:exceler_plus_flutter/features/arm/data/i_data_source.dart';
import 'package:injectable/injectable.dart';

@named
@Singleton(as: IDataSource)
class IsarDataSourceImpl implements IDataSource {
  @override
  List<ArmBD> getArms() {
    // TODO: implement getArms
    throw UnimplementedError();
  }

  @override
  List<String> getRowsFile(String path) {
    // TODO: implement getRowsFile
    throw UnimplementedError();
  }
}
