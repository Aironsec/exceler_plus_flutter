import 'package:exceler_plus_flutter/features/auth/presentation/auth_screen.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:exceler_plus_flutter/features/lic/domain/entity/lic_entity.dart';
import 'package:exceler_plus_flutter/features/main/presenter/body_home.dart';
import 'package:exceler_plus_flutter/features/main/presenter/tab_bar_home_sreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/main_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title, required this.lic});

  final String title;
  final LicEntity lic;

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
        return BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              notAuthorized: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuthScreen(lic),
                  )),
            );
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(title),
              bottom: const TabBarHomeScreen(),
              actions: [
                IconButton(
                    onPressed: () => context.read<AuthCubit>().logout(),
                    icon: const Icon(Icons.exit_to_app))
              ],
            ),
            body: const BodyHome(),
            bottomNavigationBar: BottomNavigationBar(items: items()),
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
