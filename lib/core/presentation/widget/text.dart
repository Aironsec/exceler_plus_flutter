import 'package:exceler_plus_flutter/core/presentation/widget/extension.dart';
import 'package:flutter/material.dart';

Text textBlobCentr(String text) {
  return Text(
    text,
    style: const TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget textBlobPadding(String text, {required double padding}) {
  return Text(
    text,
    style: const TextStyle(fontWeight: FontWeight.bold),
  ).padding(left: padding, right: padding);
}
