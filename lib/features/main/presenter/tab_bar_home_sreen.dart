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
    const Tab(text: 'АРМ'),
    const Tab(text: 'ПЕРСОНАЛ'),
  ];
}
