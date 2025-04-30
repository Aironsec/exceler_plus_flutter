import 'package:exceler_plus_flutter/di/di.dart';
import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/auth/domain/entity/user_entity.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/auth_screen.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:exceler_plus_flutter/features/main/domain/entity/preferences_entity.dart';
import 'package:exceler_plus_flutter/features/main/presenter/bloc/main_bloc.dart';
import 'package:exceler_plus_flutter/features/main/presenter/body_home.dart';
import 'package:exceler_plus_flutter/features/main/presenter/cubit/preferences_cubit.dart';
import 'package:exceler_plus_flutter/features/main/presenter/str_main.dart';
import 'package:exceler_plus_flutter/features/main/presenter/tab_bar_home_sreen.dart';
import 'package:exceler_plus_flutter/features/main/presenter/screen/users/user_screen.dart';
import 'package:exceler_plus_flutter/features/main/presenter/view_model/main_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PreferencesCubit()),
        BlocProvider(create: (context) => getIt<MainBloc>()),
      ],
      child: BlocBuilder<PreferencesCubit, PreferencesEntity>(
        builder: (context, state) {
          return DefaultTabController(
            initialIndex: state.currentTabMain.index,
            length: MainMenuModel.values.length,
            child: Builder(builder: (context) {
              final controller = DefaultTabController.of(context);
              controller.addListener(() {
                if (!controller.indexIsChanging) {
                  context.read<PreferencesCubit>().savePreference(
                      state.copyWith(
                          currentTabMain:
                              MainMenuModel.values[controller.index]));
                }
              });
              return BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    notAuthorized: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AuthScreen())),
                  );
                },
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
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
                                        builder: (context) =>
                                            const UserScreen()));
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
        },
      ),
    );
  }
}

bool permitted(UserEntity user) => user.role == Role.admin ? true : false;
