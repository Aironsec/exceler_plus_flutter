import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';
import 'package:exceler_plus_flutter/home/data/data_source.dart';
import 'package:exceler_plus_flutter/home/domain/usecase/my_file.dart';
import 'package:injectable/injectable.dart';

@named
@Singleton(as: IDataSource)
class FileDataSourceImpl implements IDataSource {
  @override
  Future<List<ArmEntity>> getArms(String? path) async {
    final file = MyFile(path: path ?? '');
    return file.arms;
  }
}
