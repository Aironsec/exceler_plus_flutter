import 'package:exceler_plus_flutter/features/main/presenter/view_model/main_menu_model.dart';
import 'package:flutter/material.dart';

class TabBarHomeScreen extends StatelessWidget implements PreferredSizeWidget {
  const TabBarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(tabs: _buildTabs());
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

List<Tab> _buildTabs() {
  return [
    Tab(text: MainMenuModel.deadlines.title),
    Tab(text: MainMenuModel.specification.title),
    Tab(text: MainMenuModel.planeWorks.title),
    Tab(text: MainMenuModel.progressWorks.title),
    Tab(text: MainMenuModel.bid.title),
    Tab(text: MainMenuModel.distributionDepartaments.title),
    Tab(text: MainMenuModel.brit.title),
  ];
}
