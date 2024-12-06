import 'package:flutter/material.dart';

enum ColorCell {
  normalColor(Colors.white),
  errorColor(Colors.redAccent);

  final Color color;
  const ColorCell(this.color);
}
