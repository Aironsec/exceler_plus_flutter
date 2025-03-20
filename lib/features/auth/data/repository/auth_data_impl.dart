import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:exceler_plus_flutter/features/auth/domain/repositoty/i_auth_data.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/str_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:licensing/licensing.dart';

@Singleton(as: IAuthData)
class AuthDataImpl extends IAuthData {
  @override
  Future<UserEntity?> getUser(name, password) async {
    final db = openDb(dbName);
    if (db == null) {
      return null;
    }
    final user = await db.users.filter().nameEqualTo(name).findFirst();
    if (user == null) {
      return null;
    }
    return Password.verify(password, user.hash)
        ? UserEntity(fio: user.fio, role: user.role)
        : null;
  }

  @override
  List<User>? getUsers() {
    final db = openDb(dbName);
    if (db == null) {
      return null;
    }
    return db.users.filter().nameIsNotEmpty().findAllSync();
  }

  @override
  List<User> addNullUser(List<User> users) {
    final User user = User()
      ..fio = StrAuth.newUser
      ..name = ''
      ..hash = ''
      ..role = Role.user;
    users.add(user);
    return users;
  }

  @override
  void saveUser(User user) {
    final db = openDb(dbName);
    if (db == null) {
      return;
    }
    final hash = Password.hash(user.hash, PBKDF2());
    user.hash = hash;
    db.writeTxnSync(() {
      db.users.putSync(user);
    });
  }

  @override
  void removeUser(User user) {
    final db = openDb(dbName);
    if (db == null) {
      return;
    }
    db.writeTxnSync(() {
      db.users.deleteSync(user.id);
    });
  }
}
