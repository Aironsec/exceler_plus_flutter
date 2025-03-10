import 'package:exceler_plus_flutter/core/untils/db_utils.dart';
import 'package:exceler_plus_flutter/features/lic/data/model/license.dart';
import 'package:exceler_plus_flutter/features/lic/domain/entity/lic_entity.dart';

abstract class ILicData extends OpenDB {
  ILicData({super.dbName = 'license'});

  Future<License?> getLic(String key);

  Future<LicEntity?> registration(License lic);
}
