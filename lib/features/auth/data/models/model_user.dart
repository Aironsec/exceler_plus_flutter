import 'package:isar/isar.dart';

part 'model_user.g.dart';

@collection
class ModelUser {
  Id id = Isar.autoIncrement;
  String? fio;
  String? hash;
  @Enumerated(EnumType.ordinal32)
  Role? role;
}

enum Role { admin, user }
