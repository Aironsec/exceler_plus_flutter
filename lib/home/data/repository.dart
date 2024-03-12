import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';

abstract class IRepository {
  Future<List<ArmEntity>> getFileArms(String path);
}
