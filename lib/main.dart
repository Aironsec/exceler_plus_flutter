import 'package:exceler_plus_flutter/data/isar/arm_bd.dart';
import 'package:exceler_plus_flutter/data/isar/arm_exception_bd.dart';
import 'package:exceler_plus_flutter/di/di.dart';
import 'package:exceler_plus_flutter/home/presenter/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  final dir = await getApplicationDocumentsDirectory();
  final bd = Isar.open(
    [ArmBDSchema, ArmExceptionBDSchema],
    name: 'bd',
    directory: dir.path,
  );
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exceler plus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
