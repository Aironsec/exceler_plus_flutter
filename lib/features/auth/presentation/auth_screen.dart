import 'package:exceler_plus_flutter/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:exceler_plus_flutter/features/lic/domain/entity/lic_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  final LicEntity lic;
  const AuthScreen(this.lic, {super.key});

  @override
  Widget build(BuildContext context) {
    final loginTextController = TextEditingController();
    final passwordTextController = TextEditingController();
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: loginTextController,
                decoration: const InputDecoration(
                  labelText: 'Логин',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: passwordTextController,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                  border: OutlineInputBorder(),
                ),
              ),
              IconButton.filled(
                autofocus: true,
                onPressed: () => context.read<AuthCubit>().login(
                    loginTextController.text + passwordTextController.text),
                icon: const Icon(Icons.input),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
