import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:exceler_plus_flutter/features/auth/domain/repositoty/i_auth_data.dart';
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
    return Password.verify(password, user.hash) ? UserEntity(fio: user.fio, role: user.role) : null;
  }
}
