import 'package:exceler_plus_flutter/core/presentation/page/error_screen.dart';
import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/auth_screen.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:exceler_plus_flutter/features/lic/presentation/cubit/lic_cubit.dart';
import 'package:exceler_plus_flutter/features/main/presenter/bloc/main_bloc.dart';
import 'package:exceler_plus_flutter/features/main/presenter/body_home.dart';
import 'package:exceler_plus_flutter/features/main/presenter/str_main.dart';
import 'package:exceler_plus_flutter/features/main/presenter/tab_bar_home_sreen.dart';
import 'package:exceler_plus_flutter/features/main/presenter/screen/users/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    builder: (context) => BlocBuilder<LicCubit, LicState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          lic: (lic) => const AuthScreen(),
                          orElse: () =>
                              const ErrorScreen(text: StrMain.errorLic),
                        );
                      },
                    ),
                  )),
            );
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  String fio = 'Ошибка, пользователь не известен';
                  state.whenOrNull(
                    authorized: (user) => fio = user.fio,
                  );
                  return Text(fio);
                },
              ),
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
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      UserEntity user =
                          const UserEntity(fio: '', role: Role.user);
                      state.whenOrNull(
                        authorized: (user1) => user = user1,
                      );
                      return ListTile(
                        enabled: permitted(user),
                        title: const Text(StrMain.titleUsers),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UserScreen()));
                        },
                      );
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
