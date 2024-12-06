import 'package:exceler_plus_flutter/features/arm/data/dto/arm_dto.dart';

abstract interface class IRepository {
  Future<List<ArmDto>> getArms(String? path);
  Future<String> getPathBD();
  Future<String> getPathFiles();
}
