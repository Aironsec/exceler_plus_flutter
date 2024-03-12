import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';
import 'package:exceler_plus_flutter/home/data/data_source.dart';
import 'package:exceler_plus_flutter/home/data/datasource/file_data_source_impl.dart';
import 'package:exceler_plus_flutter/home/data/datasource/isar_data_source_impl.dart';
import 'package:exceler_plus_flutter/home/data/repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IRepository)
class ArmRepositoryImpl implements IRepository {
  ArmRepositoryImpl(
    @Named.from(FileDataSourceImpl) this.fileDataSource,
    @Named.from(IsarDataSourceImpl) this.isarDataSource,
  );
  IDataSource fileDataSource;
  IDataSource isarDataSource;

  @override
  Future<List<ArmEntity>> getFileArms(String path) {
    return fileDataSource.getArms(path);
  }
}
