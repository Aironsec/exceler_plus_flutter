import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      SizedBox.expand(),
      SizedBox.expand(),
    ]);
  }
}

/* Widget _buildLeftPanel() {
  return Expanded(
    child: frameInOut(child: const BuildTable()),
  );
}

Widget _buildRightPanel() {
  return SizedBox(
    width: 250,
    child: frameInOut(child: _rightPanel()),
  );
} */
