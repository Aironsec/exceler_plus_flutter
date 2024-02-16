import 'package:isar/isar.dart';
part 'arm_bd.g.dart';

@collection
class ArmBD {
  Id? id;
  @Index(unique: true, caseSensitive: false)
  String? armName;
  DateTime? dateTime;
  String? cert;
  List<PersonBD>? persons;
}

@embedded
class PersonBD {
  String? fio;
  String? lab;
}
