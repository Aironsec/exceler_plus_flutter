import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/auth_screen.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:exceler_plus_flutter/features/lic/domain/entity/lic_entity.dart';
import 'package:exceler_plus_flutter/features/main/presenter/bloc/main_bloc.dart';
import 'package:exceler_plus_flutter/features/main/presenter/body_home.dart';
import 'package:exceler_plus_flutter/features/main/presenter/str_main.dart';
import 'package:exceler_plus_flutter/features/main/presenter/tab_bar_home_sreen.dart';
import 'package:exceler_plus_flutter/features/main/presenter/screen/users/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.user, required this.lic});

  final UserEntity user;
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
              title: Text(user.fio),
              bottom: const TabBarHomeScreen(),
              actions: [
                IconButton(
                    onPressed: () => context.read<AuthCubit>().logout(),
                    icon: const Icon(Icons.exit_to_app))
              ],
            ),
            body: const BodyHome(),
            bottomNavigationBar: BottomNavigationBar(items: items()),
            drawer: Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text('Drawer Header'),
                  ),
                  ListTile(
                    enabled: permitted(user),
                    title: const Text(StrMain.titleUsers),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserScreen()));
                    },
                  )
                ],
              ),
            ),
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

bool permitted(UserEntity user) => user.role == Role.admin ? true : false;
