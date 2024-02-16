import 'package:isar/isar.dart';
part 'arm_exception_bd.g.dart';

@collection
class ArmExceptionBD {
  Id? id;
  @Index(unique: true)
  String? armName;
}
