import 'package:exceler_plus_flutter/core/presentation/widget/extension.dart';
import 'package:exceler_plus_flutter/features/lic/presentation/cubit/lic_cubit.dart';
import 'package:exceler_plus_flutter/features/lic/presentation/str_lic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inputLic = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            autofocus: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: StrLic.labelInputLic,
            ),
            controller: inputLic,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () =>
                context.read<LicCubit>().registration(inputLic.text),
            child: const Text(StrLic.textButtonRegistration),
          ),
        ],
      ).centerBox(height: 200, width: 200),
    );
  }
}
