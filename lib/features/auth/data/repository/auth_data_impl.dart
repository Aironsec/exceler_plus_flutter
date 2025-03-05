import 'dart:io';

import 'package:exceler_plus_flutter/features/auth/data/models/model_user.dart';
import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:exceler_plus_flutter/features/auth/domain/repositoty/i_auth_data.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:licensing/licensing.dart';
import 'package:path_provider/path_provider.dart';

@Singleton(as: IAuthData)
class AuthDataImpl implements IAuthData {
  @override
  Future<UserEntity?> getUser(String token) async {
    final dir = await getApplicationDocumentsDirectory();
    final db = Isar.openSync(
      name: 'exceler_plus',
      [
        ModelUserSchema,
      ],
      directory: dir.path,
    );
    final hash = _hashPassword(token);
    final user = db.modelUsers.filter().hashEqualTo(hash).findFirstSync();
    return user == null ? null : _user(user);
  }

  UserEntity _user(ModelUser user) =>
      UserEntity(fio: user.fio!, role: user.role!);

  String _hashPassword(String token) {
    final algorithm = PBKDF2();
    return Password.hash(token, algorithm);
  }

  @override
  String? getLic() {
    final fileLic = '${Directory.current.path}/license.isar';
    if (File(fileLic).existsSync()) {
      return _license();
    }
    return null;
  }

  String? _license() {
    return null;
  }
}
