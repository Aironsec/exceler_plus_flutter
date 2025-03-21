import 'package:exceler_plus_flutter/core/presentation/page/error_screen.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/str_auth.dart';
import 'package:exceler_plus_flutter/features/lic/presentation/cubit/lic_cubit.dart';
import 'package:exceler_plus_flutter/features/main/presenter/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exceler_plus_flutter/core/presentation/widget/extension.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginTextController = TextEditingController();
    final passwordTextController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              StrAuth.titleScreen,
              textAlign: TextAlign.center,
            ),
            BlocBuilder<LicCubit, LicState>(
              builder: (context, state) {
                String idMachine = '';
                state.whenOrNull(
                  lic: (lic) => idMachine = lic.idMachine,
                );
                return Text(
                  StrAuth.idRM + idMachine,
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontSize: 10.0),
                );
              },
            )
          ],
        ),
      ),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authorized: (user) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                )),
            error: (error) => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ErrorScreen(text: error),
                )),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: loginTextController,
              decoration: const InputDecoration(
                labelText: StrAuth.labelInputLogin,
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              enableSuggestions: false,
              autocorrect: false,
              obscureText: true,
              controller: passwordTextController,
              decoration: const InputDecoration(
                labelText: StrAuth.labelInputPassword,
                border: OutlineInputBorder(),
              ),
            ),
            IconButton.filled(
              autofocus: true,
              onPressed: () => context.read<AuthCubit>().login(
                    name: loginTextController.text,
                    password: passwordTextController.text,
                  ),
              icon: const Icon(Icons.input),
            ),
          ],
        ).centerBox(height: 200, width: 200),
      ),
    );
  }
}
