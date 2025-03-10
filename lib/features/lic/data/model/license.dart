import 'package:isar/isar.dart';

part 'license.g.dart';

@collection
class License {
  Id id = 1;
  DateTime date = DateTime.now();
  late String hash;
  byte count = 5;
  String? idMachine;
}
