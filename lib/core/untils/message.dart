import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void message(String mes) {
  if (kDebugMode) {
    print(mes);
  }
}

void messageSB(String text, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
