import 'package:exceler_plus_flutter/home/presenter/widgets/table.dart';
import 'package:exceler_plus_flutter/home/presenter/widgets/view_tab_dowload.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      const ViewTabDowload(),
      BuildTable(),
    ]);
  }
}
