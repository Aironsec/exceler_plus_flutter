import 'package:exceler_plus_flutter/features/arm/data/dto/arm_dto.dart';
import 'package:exceler_plus_flutter/features/arm/presenter/bloc/load_arms_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BuildTable extends StatelessWidget {
  const BuildTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: BlocBuilder<LoadArmsBloc, LoadArmsState>(
        builder: (context, state) {
          return Table(
            border: TableBorder.symmetric(
              inside: const BorderSide(color: Colors.black, width: 1),
              outside: const BorderSide(color: Colors.black, width: 1),
            ),
            columnWidths: const {
              0: FixedColumnWidth(30),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
              3: FlexColumnWidth(),
            },
            textBaseline: TextBaseline.alphabetic,
            children: state.arm.map((e) => _buildTableRow(e)).toList(),
          );
        },
      ),
    );
  }
}

TableRow _buildTableRow(ArmDto item) {
  return TableRow(children: [
    TableCell(
      verticalAlignment: TableCellVerticalAlignment.fill,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(
          item.nn.toString(),
        ),
      ),
    ),
    const TableCell(
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text('item.armName'),
        ),
      ),
    ),
    TableCell(
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            DateFormat('dd.MM.yyyy').format(DateTime.now()),
          ),
        ),
      ),
    ),
    const TableCell(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Text('item.certificate'),
      ),
    ),
  ]);
}
