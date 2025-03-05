import 'package:exceler_plus_flutter/features/lic/data/model/license.dart';
import 'package:exceler_plus_flutter/features/lic/domain/entity/lic_entity.dart';

abstract class ILicData {
  Future<License?> getLic(String key);

  String? fileLicPath();

  Future<LicEntity?> registration(License lic);
}
