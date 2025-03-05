import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';

abstract class IAuthData {
  Future<UserEntity?> getUser(String token);
  String? getLic();
}
