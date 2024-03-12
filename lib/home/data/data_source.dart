import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';

abstract class IDataSource {
  Future<List<ArmEntity>> getArms(String? path);
}
