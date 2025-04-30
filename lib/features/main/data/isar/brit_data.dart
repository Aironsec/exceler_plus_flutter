import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/plane_works_data.dart';
import 'package:isar/isar.dart';
import 'package:jiffy/jiffy.dart';

part 'brit_data.g.dart';

@collection
class BritData {
  Id id = Isar.autoIncrement;
  @Index()
  DateTime date = DateTime.now();
  @Index(composite: [CompositeIndex('quarter')])
  int get year => Jiffy.parseFromDateTime(date).year;
  int get quarter => Jiffy.parseFromDateTime(date).quarter;
  late UsersDeportament usersDeportament;
  late List<TypeWorks> typeWorks;
}

@embedded
class TypeWorks {
  late TypeWork typeWork;
  int factCount = 0;
  int likelyCount = 0;
}
