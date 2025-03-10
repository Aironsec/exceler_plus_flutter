import 'package:device_info_plus/device_info_plus.dart';
import 'package:exceler_plus_flutter/features/lic/data/model/license.dart';
import 'package:exceler_plus_flutter/features/lic/domain/entity/lic_entity.dart';
import 'package:exceler_plus_flutter/features/lic/domain/repository/i_lic_data.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:licensing/licensing.dart';

@Singleton(as: ILicData)
class LicDataImpl extends ILicData {
  @override
  Future<License?> getLic(String key) async {
    final License? lic = await _findLic();
    if (lic == null) {
      return null;
    }
    final String hash = lic.hash;
    if (Password.verify(key, hash)) {
      return lic;
    }
    return null;
  }

  Future<License?> _findLic() async {
    final Isar? dbLic = openDb(dbName);
    return dbLic?.licenses.get(1);
  }

  @override
  Future<LicEntity?> registration(License? lic) async {
    //без лицензии не регистрировать
    if (lic == null) {
      return null;
    }
    //без id компютера не регистрировать
    final thisIdMachine = await _getIdMachine();
    if (thisIdMachine == null) {
      return null;
    }
    //при отсутствии БД (нет файла, повреждена) не регистрировать
    final dbLic = openDb(dbName);
    if (dbLic == null) {
      return null;
    }
    //можно регистрировать не более 5 раз
    final count = lic.count;
    if (count < 1) {
      return null;
    }
    //текущая дата должна быть позже даты создания лицензии или регистразии
    final date = lic.date;
    if (date.isAfter(DateTime.now())) {
      return null;
    }
    //зарегистрированная лицензия должна иметь id компьютера
    final licIdMachine = lic.idMachine;
    if (licIdMachine == null && count < 5) {
      return null;
    }
    //зарегистрированная лицензия не может быть зарегистрирована на другом компе
    if (licIdMachine != null && licIdMachine != thisIdMachine) {
      return null;
    }
    final hash = lic.hash;
    lic = License()
      ..id = 1
      ..count = count - 1
      ..idMachine = thisIdMachine
      ..hash = hash;
    dbLic.writeTxn(() async {
      dbLic.licenses.put(lic!);
    });
    return LicEntity(idMachine: thisIdMachine);
  }

  Future<String?> _getIdMachine() async {
    final deviceInfo = await DeviceInfoPlugin().linuxInfo;
    return deviceInfo.machineId;
  }
}
