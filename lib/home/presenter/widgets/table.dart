import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';
import 'package:exceler_plus_flutter/home/presenter/bloc/load_arms_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildTable extends StatelessWidget {
  const BuildTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: BlocBuilder<LoadArmsBloc, LoadArmsState>(
        builder: (context, state) {
          return Table(
            textDirection: TextDirection.ltr,
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
            children: state.arms.map((e) => _buildTableRow(e)).toList(),
          );
        },
      ),
    );
  }
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
