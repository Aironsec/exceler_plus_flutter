import 'package:exceler_plus_flutter/features/main/data/isar/plane_works_data.dart';
import 'package:isar/isar.dart';
import 'package:jiffy/jiffy.dart';

part 'bid_data.g.dart';

@collection
class BidData {
  Id? id;
  @Index()
  DateTime date = DateTime.now();
  @Index(composite: [CompositeIndex('quarter')])
  int get year => Jiffy.parseFromDateTime(date).year;
  int get quarter => Jiffy.parseFromDateTime(date).quarter;
  String numBid = 'Регистрация заявки';
  String? note;
  final planeLinks = IsarLinks<PlaneWorksData>();
}
