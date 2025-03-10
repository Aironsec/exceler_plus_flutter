import 'package:exceler_plus_flutter/core/untils/db_utils.dart';
import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';

abstract class IAuthData extends OpenDB{
  IAuthData({super.dbName = 'license'});

  Future<UserEntity?> getUser(String name, String password);
}
