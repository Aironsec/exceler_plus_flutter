import 'package:exceler_plus_flutter/data/isar/arm_bd.dart';

abstract interface class IDataSource {
  List<String> getRowsFile(String path) => [];
  List<ArmBD> getArms() => [];
}
