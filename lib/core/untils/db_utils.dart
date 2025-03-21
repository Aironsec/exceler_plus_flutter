import 'dart:io';

import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/lic/data/model/license.dart';
import 'package:isar/isar.dart';

class OpenDB {
  String dbName;
  OpenDB({required this.dbName});

  Isar get openDbExisting =>
      Isar.getInstance(dbName) ??
      Isar.openSync(
          name: dbName,
          [LicenseSchema, UserSchema],
          directory: Directory.current.path);

  Isar? openDb(String dbName) {
    final fLic = fileIsarExist(dbName);
    if (fLic == null) {
      return null;
    }
    try {
      return Isar.getInstance(dbName) ??
          Isar.openSync(
              name: dbName,
              [LicenseSchema, UserSchema],
              directory: Directory.current.path);
    } catch (e) {
      return null;
    }
  }

  String? fileIsarExist(String dbName) {
    String filePath = '${Directory.current.path}/$dbName.isar';
    return File(filePath).existsSync() ? filePath : null;
  }

  void closeDb() {
    final dbInst = Isar.getInstance(dbName);
    if (dbInst != null) {
      dbInst.close();
    }
  }
}
