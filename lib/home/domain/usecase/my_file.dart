import 'dart:io';
import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';
import 'package:exceler_plus_flutter/home/domain/enum/type_file.dart';
import 'package:intl/intl.dart';

class MyFile {
  MyFile({required this.path}) {
    chekPath();
    checkTypeFile();
    getRowsFile();
  }
  String path;

  TypeFile? typeFile;
  List<String> rows = [];
  final correctNameArm = RegExp(
      r'^\d{2,3}[-]\d{1,3}[-][Q|А-Я]+\d[-]?\d?|^[А-Я]{2,4}[-][А-Я|\w]{1,3}[\/\]?[-]?[Q|А-Я]?\d[-]?\d?|^\d{2}[-][А-Я]{3}\d');
  final correctFIO = RegExp(
      r'^[А-ЯЁ][а-яё]+[-]?[А-ЯЁ]?[а-яё]+[ ][А-Я][.][А-Я][.]|[Исполнитель]');

  void getRowsFile() {
    rows = File(path).readAsLinesSync();
  }

  void checkTypeFile() {
    if (path.contains(TypeFile.arms.typeName)) {
      typeFile = TypeFile.arms;
    } else if (path.contains(TypeFile.personals.typeName)) {
      typeFile = TypeFile.personals;
    } else {
      throw "Ошибка файла. Не верный тип файла";
    }
  }

  void chekPath() {
    if (File(path).existsSync()) {
      path = File(path).absolute.path;
    } else {
      throw "Ошибка файла. Файл не найден.";
    }
  }

  List<ArmEntity> get arms {
    List<ArmEntity> arms = [];
    for (var row in rows) {
      final rowSplit = row.split(',');
      DateTime? date =
          DateFormat("dd.mm.yy").tryParse(rowSplit[ArmEntity.dateCol].trim());
      if (date != null) {
        arms.add(
          ArmEntity(
              armName: rowSplit[ArmEntity.armNameCol].trim(),
              date: date,
              certificate: rowSplit[ArmEntity.certCol].trim()),
        );
      } else {
        throw "Ошибка в файле. Не верная дата в строке: ${rows.indexOf(row)}";
      }
    }
    return arms;
  }

  // Future<List<ArmEntity>> get arms async {
  //   List<ArmEntity> arms = [];
  //   // final bd = ddi.get<Isar>(qualifier: 'bd');
  //   bossLoop:
  //   for (int i = 0; i < rows.length; i++) {
  //     var row = rows[i];
  //     final rowSplit = row.split(",");
  //     String? armName =
  //         correctNameArm.stringMatch(rowSplit[ArmEntity.armNameCol].trim());
  //     DateTime? date =
  //         DateFormat("dd.mm.yy").tryParse(rowSplit[ArmEntity.dateCol].trim());
  //     if (date == null) {
  //       message("НЕ корректная дата сертификата! Строка ${i + 1}");
  //       continue;
  //     } else if (armName == null) {
  //       bool except =
  //           bd.armExceptionBDs.where().armNameProperty().countSync() > 0
  //               ? true
  //               : false;
  //       // bd.get(rowSplit[ArmEntity.armNameCol].trim())?.active ?? false;
  //       if (!except) {
  //         message("НЕ корректное название АРМ! Строка ${i + 1}");
  //         message(
  //             "Добавить '${rowSplit[ArmEntity.armNameCol]}' в исключение и использовать? Да/Нет");
  //         if (stdin.readLineSync(encoding: utf8)
  //             case 'Д' || 'д' || 'Y' || 'y') {
  //           armName = rowSplit[ArmEntity.armNameCol].trim();
  //           await bd.writeTxn(() =>
  //               bd.armExceptionBDs.put(ArmExceptionBD()..armName = armName));
  //           // bd.put(armName, ArmExceptionDB(true));
  //         } else {
  //           continue;
  //         }
  //       } else {
  //         armName = rowSplit[ArmEntity.armNameCol];
  //       }
  //     }
  //     for (int ii = 0; ii < arms.length; ii++) {
  //       var arm = arms[ii];
  //       if (arm.armName == armName) {
  //         message(
  //             'Дубликат!!! "$armName" в стр. ${i + 1} уже встречался в ${ii + 1} стр. этого файла');
  //         break bossLoop;
  //       }
  //     }
  //     arms.add(ArmEntity(
  //       armName: armName,
  //       date: date,
  //       certificate: rowSplit[ArmEntity.certCol].trim(),
  //     ));
  //   }

  //   message(
  //       'В файле: ${rows.length} стр., Обработано: ${arms.length} стр., Разница: ${rows.length - arms.length} стр.');

  //   return arms;
  // }

  // Future<Map<String, List<Personal>>> get personals async {
  //   Map<String, List<Personal>> personals = {};
  //   List<Personal> listPerson = [];
  //   final bd = ddi.get<Isar>(qualifier: 'bd');
  //   String? armName;
  //   bossLoop:
  //   for (var i = 0; i < rows.length; i++) {
  //     var row = rows[i];
  //     final rowSplit = row.split(",");
  //     if (rowSplit[Personal.armNameCol].isNotEmpty) {
  //       armName =
  //           correctNameArm.stringMatch(rowSplit[Personal.armNameCol].trim());
  //       if (armName == null) {
  //         bool except =
  //             await bd.armExceptionBDs.where().armNameProperty().count() > 0
  //                 ? true
  //                 : false;
  //         if (except) {
  //           armName = rowSplit[Personal.armNameCol].trim();
  //           listPerson = [];
  //         } else {
  //           message("НЕ корректное название АРМ! Строка ${i + 1}");
  //           continue;
  //         }
  //       } else {
  //         listPerson = [];
  //       }
  //     } else if (armName == null) {
  //       message("НЕ корректное название АРМ! Строка ${i + 1}");
  //       continue;
  //     }

  //     String? fio = correctFIO.stringMatch(rowSplit[Personal.fioCol].trim());
  //     if (fio == null) {
  //       message("НЕ корректное имя пользователя! Строка ${i + 1}");
  //       continue;
  //     }

  //     for (int ii = 0; ii < personals.length; ii++) {
  //       var prson = personals.keys.elementAt(ii);
  //       if (prson == rowSplit[ArmEntity.armNameCol]) {
  //         message(
  //             'Дубликат!!! "$armName" в стр. ${i + 1} уже встречался в ${ii + 1} стр. этого файла');
  //         break bossLoop;
  //       }
  //     }
  //     listPerson.add(Personal(fio, rowSplit[Personal.labCol].trim()));
  //     personals[armName] = listPerson;
  //   }

  //   return personals;
  // }
}
