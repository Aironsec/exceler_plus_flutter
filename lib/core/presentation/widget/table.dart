import 'package:flutter/material.dart';

Table tableBorderFixedSize(List<TableRow> children,
    {TableColumnWidth defaultColumnWidth = const FixedColumnWidth(50)}) {
  return Table(
    defaultColumnWidth: defaultColumnWidth,
    border: TableBorder.all(color: const Color.fromARGB(255, 71, 113, 161)),
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    children: children,
  );
}
