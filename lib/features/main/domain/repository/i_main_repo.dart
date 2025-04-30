import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/specification_data.dart';
import 'package:exceler_plus_flutter/features/main/domain/entity/item_face.dart';

abstract class IMainRepo {
  Map<int, List<DeadlinesData>> getDeadlineDataAll();
  Map<int, List<ItemFace>> getRowsDeadlineData(String filePath);
  Future<List<SpecificationData>> getSpecificationData();
}
