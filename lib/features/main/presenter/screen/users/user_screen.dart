import 'package:exceler_plus_flutter/core/presentation/widget/extension.dart';
import 'package:exceler_plus_flutter/di/di.dart';
import 'package:exceler_plus_flutter/features/auth/data/models/user.dart';
import 'package:exceler_plus_flutter/features/main/presenter/cubit/user_cubit.dart';
import 'package:exceler_plus_flutter/features/main/presenter/screen/dialogs/password_dialog.dart';
import 'package:exceler_plus_flutter/features/main/presenter/screen/users/str_users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final keyFormUsers = GlobalKey<FormState>();
    final controlFio = TextEditingController();
    final controlName = TextEditingController();
    final controlPassword = TextEditingController();
    TextSelection tapSelected(TextEditingController controller) {
      return controller.selection =
          TextSelection(baseOffset: 0, extentOffset: controller.text.length);
    }

    int selectedIndex = 0;
    bool addEnable = true;
    bool saveEnable() => !addEnable;
    bool selectAdmin = false;
    List<User> users = [];

    return BlocProvider(
      create: (context) => getIt<UserCubit>(),
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is LoadUsers) {
            users = state.users;
            if (selectedIndex >= users.length) {
              selectedIndex = users.length - 1;
            }
            controlFio.text = users[selectedIndex].fio;
            controlName.text = users[selectedIndex].name;
            controlPassword.text = users[selectedIndex].hash;
            selectAdmin =
                users[selectedIndex].role == Role.admin ? true : false;
          } else if (state is CheckChenge) {
            selectAdmin = state.check ?? false;
          }
          final userCubit = context.read<UserCubit>();
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(StrUsers.titleAppBar),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton.filledTonal(
                    onPressed: addEnable
                        ? () {
                            addEnable = false;
                            selectedIndex = users.length;
                            userCubit.addNullUser();
                          }
                        : null,
                    icon: const Icon(Icons.person_add),
                  ),
                )
              ],
            ),
            body: Row(
              children: [
                Form(
                  key: keyFormUsers,
                  child: OverflowBox(
                    alignment: Alignment.topLeft,
                    minHeight: 0,
                    maxHeight: double.infinity,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.length < 4 ||
                                !users.every((user) => user.name != value)) {
                              return StrUsers.errorFild;
                            }
                            return null;
                          },
                          controller: controlFio,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: StrUsers.labelFIO,
                          ),
                          onTap: () => tapSelected(controlFio),
                        ).padding(left: 16, top: 16),
                        TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.length < 4 ||
                                !users.every((user) => user.name != value)) {
                              return StrUsers.errorFild;
                            }
                            return null;
                          },
                          controller: controlName,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: StrUsers.labelName,
                          ),
                          onTap: () => tapSelected(controlName),
                        ).padding(left: 16, top: 16),
                        Row(
                          children: [
                            TextFormField(
                              enabled: saveEnable(),
                              validator: (value) {
                                if (value == null ||
                                    value.length < 6 ||
                                    value.length > 12) {
                                  return StrUsers.errorFild;
                                }
                                return null;
                              },
                              controller: controlPassword,
                              autocorrect: false,
                              enableSuggestions: false,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: StrUsers.labelPassword,
                              ),
                              onTap: () => tapSelected(controlPassword),
                            ).expanded(),
                            TextButton(
                              onPressed: addEnable
                                  ? () {
                                      showDialog(
                                        context: context,
                                        builder: (_) => BlocProvider.value(
                                          value: userCubit,
                                          child: PasswordDialog(
                                              user: users[selectedIndex]),
                                        ),
                                      );
                                    }
                                  : null,
                              child: const Text(StrUsers.chengePassword),
                            ).padding(left: 16),
                          ],
                        ).padding(left: 16, top: 16),
                        CheckboxListTile(
                          title: const Text(StrUsers.permitedAdmin),
                          value: selectAdmin,
                          enabled: saveEnable(),
                          onChanged: (bool? value) {
                            userCubit.checkChenge(value);
                          },
                        ).padding(left: 16, top: 16),
                        TextButton(
                          onPressed: saveEnable()
                              ? () {
                                  if (keyFormUsers.currentState?.validate() ??
                                      false) {
                                    addEnable = true;
                                    final user = User()
                                      ..id = users[selectedIndex].id
                                      ..fio = controlFio.text
                                      ..name = controlName.text
                                      ..hash = controlPassword.text
                                      ..role =
                                          selectAdmin ? Role.admin : Role.user;
                                    userCubit.saveUser(user);
                                  }
                                }
                              : null,
                          child: const Text(StrUsers.saveUser),
                        ).padding(top: 16),
                      ],
                    ),
                  ),
                ).expanded(flex: 2),
                ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: users.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return Focus(
                      canRequestFocus: false,
                      descendantsAreFocusable: false,
                      child: ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        selected: selectedIndex == index,
                        selectedTileColor: Colors.amber[100],
                        title: Text(users[index].fio),
                        onTap: selectedIndex != index
                            ? () {
                                userCubit.getUsers();
                                addEnable = true;
                                selectedIndex = index;
                              }
                            : null,
                        trailing: index != 0
                            ? IconButton(
                                onPressed: () {
                                  addEnable = true;
                                  selectedIndex = selectedIndex > index
                                      ? selectedIndex - 1
                                      : index - 1;
                                  context
                                      .read<UserCubit>()
                                      .removeUser(users[index]);
                                },
                                icon: const Icon(Icons.delete_forever),
                              )
                            : null,
                      ),
                    );
                  },
                ).expanded(),
              ],
            ).margin(left: 16, top: 16, right: 16, bottom: 16),
          );
        },
      ),
    );
  }
}
