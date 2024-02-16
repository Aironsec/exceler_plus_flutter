import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';
import 'package:flutter/material.dart';

class BuildTable extends StatelessWidget {
  BuildTable({super.key});
  final List<ArmEntity> _list = _generateList();

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.ltr,
      border: TableBorder.symmetric(
        inside: const BorderSide(color: Colors.black, width: 1),
        outside: const BorderSide(color: Colors.black, width: 1),
      ),
      defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
      defaultColumnWidth: const IntrinsicColumnWidth(),
      columnWidths: const {
        0: FixedColumnWidth(50),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
        3: FlexColumnWidth(),
      },
      textBaseline: TextBaseline.alphabetic,
      children: _list.map((e) => _buildTableRow(e)).toList(),
    );
  }
}

List<ArmEntity> _generateList() {
  return List.generate(
      20,
      (index) => ArmEntity(
          armName: "armName", date: DateTime.now(), certificate: "certificate")
        ..nn = index);
}

TableRow _buildTableRow(ArmEntity item) {
  return TableRow(children: [
    TableCell(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(
          item.nn.toString(),
          style: const TextStyle(backgroundColor: Colors.blueGrey),
        ),
      ),
    ),
    TableCell(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(item.armName),
      ),
    ),
    TableCell(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(item.date.toString()),
      ),
    ),
    TableCell(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(item.certificate),
      ),
    ),
  ]);
}
