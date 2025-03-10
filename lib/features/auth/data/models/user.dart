import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  late String fio;
  late String name;
  late String hash;
  @Enumerated(EnumType.ordinal32)
  Role role = Role.user;
}

enum Role { admin, user }
