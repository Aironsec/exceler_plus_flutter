import 'package:exceler_plus_flutter/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyAuth extends StatelessWidget {
  const BodyAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логин',
                border: OutlineInputBorder(),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(),
              ),
            ),
            IconButton.filled(
              autofocus: true,
              onPressed: () => context.read<AuthCubit>().login(),
              icon: const Icon(Icons.input),
            ),
          ],
        ),
      ),
    );
  }
}
