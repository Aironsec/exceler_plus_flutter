import 'package:freezed_annotation/freezed_annotation.dart';

part 'lic_entity.freezed.dart';
part 'lic_entity.g.dart';

@freezed
class LicEntity with _$LicEntity {
  const factory LicEntity({
    required String idMachine,
  }) = _LicEntity;

  factory LicEntity.fromJson(Map<String, dynamic> json) =>
      _$LicEntityFromJson(json);
}
