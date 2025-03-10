import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String fio,
    required Role role,
  }) = _UserEntity;
}
