import 'package:flutter/material.dart';

extension WidgetModifier on Widget {
  Widget centerBox({required double height, required double width}) {
    return Center(
      child: SizedBox(
        height: height,
        width: width,
        child: this,
      ),
    );
  }

  Widget expanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }

  Padding padding({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this);
  }

  Widget margin({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Container(
      margin:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }
}
