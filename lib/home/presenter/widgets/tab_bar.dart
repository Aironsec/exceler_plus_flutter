import 'package:flutter/material.dart';

class TabBarHome extends StatelessWidget implements PreferredSizeWidget {
  const TabBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(tabs: _buildTabs());
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

TabBar homeTabBar(BuildContext context) {
  return TabBar(tabs: _buildTabs());
}

List<Tab> _buildTabs() {
  return [
    const Tab(text: 'Загрузка и проверка'),
    const Tab(text: 'План на год'),
  ];
}
