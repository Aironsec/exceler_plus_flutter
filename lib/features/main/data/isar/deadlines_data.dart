import 'package:isar/isar.dart';
import 'package:jiffy/jiffy.dart';

part 'deadlines_data.g.dart';

@collection
class DeadlinesData {
  Id id = Isar.autoIncrement;
  @Index(unique: true, caseSensitive: false, replace: true)
  late String oi;
  @Index()
  late DateTime date;
  int get year => Jiffy.parseFromDateTime(date).year;
  @Index(composite: [
    CompositeIndex('date'),
    CompositeIndex('oi'),
  ])
  int get quarter => Jiffy.parseFromDateTime(date).quarter;
  DateTime get k1 => Jiffy.parseFromDateTime(date).add(years: 1).dateTime;
  DateTime get k2 => Jiffy.parseFromDateTime(date).add(years: 2).dateTime;
  DateTime get kz =>
      Jiffy.parseFromDateTime(date).add(years: 2, months: 6).dateTime;
  DateTime get k3 => Jiffy.parseFromDateTime(date).add(years: 3).dateTime;
  DateTime get k4 => Jiffy.parseFromDateTime(date).add(years: 4).dateTime;
  DateTime get pa => Jiffy.parseFromDateTime(date).add(years: 5).dateTime;
  @Index(unique: true, caseSensitive: false, replace: true)
  late String attestat;
  List<UsersDeportament>? usersDeportament;
}

@embedded
class UsersDeportament {
  late String fio;
  late String deportament;
  String lab = '';
  bool boss = false;
}
