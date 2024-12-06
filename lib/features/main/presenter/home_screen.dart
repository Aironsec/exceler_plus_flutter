import 'package:exceler_plus_flutter/features/main/presenter/body.dart';
import 'package:exceler_plus_flutter/features/main/presenter/tab_bar_home_sreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/main_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(builder: (context) {
        final controller = DefaultTabController.of(context);
        controller.addListener(() {
          if (!controller.indexIsChanging) {
            context
                .read<MainBloc>()
                .add(ChangeTabBarIndex(tabBarIndex: controller.index));
          }
        });
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
            bottom: const TabBarHomeScreen(),
          ),
          body: const Body(),
          bottomNavigationBar:
              BlocSelector<MainBloc, MainState, MainInitial>(
            selector: (state) {
              return state.;
            },
            builder: (context, state) {
              return BottomNavigationBar(items: items(),);
            },
          ),
        );
      }),
    );
  }

  List<BottomNavigationBarItem> items() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.storage),
        label: 'БД',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.abc),
        label: 'ABC',
      ),
    ];
  }
}
