
import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';
import 'package:exceler_plus_flutter/home/data/data_source.dart';
import 'package:injectable/injectable.dart';

@named
@Singleton(as: IDataSource)
class IsarDataSourceImpl implements IDataSource{
  @override
  Future<List<ArmEntity>> getArms(String? path) {
    // TODO: implement getArms
    throw UnimplementedError();
  }
  
}