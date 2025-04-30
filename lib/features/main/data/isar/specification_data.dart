import 'package:exceler_plus_flutter/features/main/data/isar/plane_works_data.dart';
import 'package:isar/isar.dart';

part 'specification_data.g.dart';

@collection
class SpecificationData {
  Id? id;
  @Index(unique: true, replace: true, caseSensitive: false)
  late String nameService;
  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get findNameService => Isar.splitWords(nameService);
  short count = 1;
  float priceWithOutNDS = 0.00;
  String get priceWithNDS => (priceWithOutNDS * 1.2).toStringAsFixed(2);
  @Backlink(to: 'specificationLinks')
  final planeLinks = IsarLinks<PlaneWorksData>();
}
