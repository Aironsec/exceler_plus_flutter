import 'package:flutter/material.dart';

Widget frameInOut({required Widget child}) {
  return DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: const Color.fromARGB(255, 206, 206, 206),
        width: 2,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: child,
    ),
  );
}
