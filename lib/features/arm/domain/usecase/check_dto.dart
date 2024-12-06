import 'package:exceler_plus_flutter/features/arm/data/dto/arm_dto.dart';
import 'package:intl/intl.dart';

Future<List<ArmDto>> checkArms(List<String> rows) async {
  List<ArmDto> arms = [];
  for (var i = 0; i < rows.length; i++) {
    final rowSplit = rows[i].split(',');
    DateTime? date = DateFormat(
      "d.M.y",
    ).tryParse(rowSplit[ArmDto.dateCol].trim());
    if (date != null) {
      arms.add(
        ArmDto(
          nn: i + 1,
          armName: rowSplit[ArmDto.armNameCol].trim(),
          date: date,
          certificate: rowSplit[ArmDto.certCol].trim(),
        ),
      );
    } else {
      throw "Ошибка в файле. Не верная дата в строке: ${i + 1}";
    }
  }
  return arms;
}
