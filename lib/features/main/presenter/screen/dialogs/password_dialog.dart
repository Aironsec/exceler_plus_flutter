import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/main/presenter/cubit/user_cubit.dart';
import 'package:exceler_plus_flutter/features/main/presenter/screen/dialogs/str_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordDialog extends StatelessWidget {
  final User user;
  const PasswordDialog({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    final controlPassword = TextEditingController();
    final keyFormDialog = GlobalKey<FormState>();

    return AlertDialog(
      title: const Text(StrDialogs.titlePassworDialog),
      content: SizedBox(
        height: 100,
        width: 250,
        child: Form(
          key: keyFormDialog,
          child: TextFormField(
            validator: (value) {
              if (value == null || value.length < 6 || value.length > 12) {
                return StrDialogs.errorFild;
              }
              return null;
            },
            controller: controlPassword,
            autocorrect: false,
            enableSuggestions: false,
            autofocus: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: StrDialogs.labelPassword,
            ),
          ),
        ),
      ),
      actions: [
        BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            return TextButton(
              onPressed: () {
                if (keyFormDialog.currentState?.validate() ?? false) {
                  user.hash = controlPassword.text;
                  context.read<UserCubit>().saveUser(user);
                  Navigator.of(context).pop();
                }
              },
              child: const Text(StrDialogs.ok),
            );
          },
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(StrDialogs.cancel),
        ),
      ],
    );
  }
}
