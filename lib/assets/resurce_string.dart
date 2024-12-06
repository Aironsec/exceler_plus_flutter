import 'package:flutter/material.dart';

class ResourceString extends InheritedWidget {
  const ResourceString({super.key, required super.child});
  static ResourceString? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ResourceString>();
  static ResourceString of(BuildContext context) {
    final ResourceString? result = maybeOf(context);
    assert(result != null, 'No ResourceString found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  final nidLoad = 'Требуется загрузка';
  final titleApp = 'Рабочее место контролёра';
  final tabNameArm = 'АРМ';
  final tabNamePersonal = 'ПЕРСОНАЛ';
}
