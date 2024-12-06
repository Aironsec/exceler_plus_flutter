import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
class MainEntity {
  final int tabBarIndex;

  const MainEntity({
    this.tabBarIndex = 0,
  });

  MainEntity copyWith({
    int? tabBarIndex,
  }) {
    return MainEntity(
      tabBarIndex: tabBarIndex ?? this.tabBarIndex,
    );
  }
}
