import 'dart:io';

import 'package:exceler_plus_flutter/core/presentation/widget/extension.dart';
import 'package:exceler_plus_flutter/core/presentation/widget/table.dart';
import 'package:exceler_plus_flutter/core/presentation/widget/text.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';
import 'package:exceler_plus_flutter/features/main/domain/entity/preferences_entity.dart';
import 'package:exceler_plus_flutter/features/main/presenter/bloc/main_bloc.dart';
import 'package:exceler_plus_flutter/features/main/presenter/cubit/preferences_cubit.dart';
import 'package:exceler_plus_flutter/features/main/presenter/str_main.dart';
import 'package:filesystem_picker/filesystem_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> openRequest(String fileNameRequest) async {
      final path = await FilesystemPicker.openDialog(
        context: context.mounted ? context : throw ('Context unmount'),
        rootDirectory: Directory.fromUri(Uri.directory('/')),
        directory: Directory.current,
        fsType: FilesystemType.file,
        allowedExtensions: ['.csv'],
        itemFilter: (fsEntity, path, name) => name == fileNameRequest,
      );
      if (path == null || !context.mounted) return;
      context.read<MainBloc>().add(MainEvent.loadFileData(path));
    }

    return BlocBuilder<PreferencesCubit, PreferencesEntity>(
      builder: (context, statePref) {
        context
            .read<MainBloc>()
            .add(MainEvent.getData(statePref.currentTabMain));
        return Column(
          children: [
            TabBarView(children: [
              SizedBox.expand(
                child: bodyDedlineTable(),
              ),
              const SizedBox.expand(),
              const SizedBox.expand(),
              const SizedBox.expand(),
              const SizedBox.expand(),
              const SizedBox.expand(),
              const SizedBox.expand(),
            ]).expanded(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () =>
                      context.read<PreferencesCubit>().fileRequest()
                          ? openRequest(statePref
                              .request[statePref.currentTabMain]!
                              .fileNameRequest)
                          : context
                              .read<PreferencesCubit>()
                              .generateStateRequest('fio'),
                  child: context.read<PreferencesCubit>().fileRequest()
                      ? textBlobCentr(
                          'Открыть файл: ${statePref.request[statePref.currentTabMain]!.fileNameRequest}')
                      : const Text(StrMain.requestData),
                ).padding(top: 8, bottom: 8),
              ],
            ),
          ],
        );
      },
    );
  }
}

Widget bodyDedlineTable() {
  return BlocBuilder<MainBloc, MainState>(
    builder: (context, state) => state.maybeWhen(
      deadlinesData: (data) => myTable(data),
      orElse: () => const Text(StrMain.noData),
    ),
  );
}

Widget myTable(Map<int, List<DeadlinesData>> data) {
  final list = <Widget>[];
  list.add(tableBorderFixedSize(
    // defaultColumnWidth: const IntrinsicColumnWidth(),
    [
      TableRow(
        children: [
          textBlobCentr('№ пп'),
          textBlobCentr('ОИ'),
          textBlobCentr('Подразделение/Лаб.'),
          textBlobCentr('Руководитель'),
          textBlobCentr('№ аттестата'),
          textBlobCentr('Дата'),
          textBlobCentr('К 1'),
          textBlobCentr('К 2'),
          textBlobCentr('КЗ'),
          textBlobCentr('К 3'),
          textBlobCentr('К 4'),
          textBlobCentr('ПА'),
        ],
      )
    ],
  ));
  for (var element in data.entries) {
    list.add(quarterTable(element.key));
    list.add(dataTable(element.value));
  }
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: list,
  );
}

Widget quarterTable(int quarter) {
  return tableBorderFixedSize(
    [
      TableRow(children: [textBlobCentr('$quarter квартал')])
    ],
  );
}

Widget dataTable(List<DeadlinesData> data) {
  return tableBorderFixedSize(
    data.isEmpty
        ? [
            TableRow(children: [textBlobPadding(StrMain.noData, padding: 3)])
          ]
        : data.map((e) {
            return TableRow(children: [
              textBlobCentr(e.oi),
              textBlobCentr(getUserDeportament(e.usersDeportament).deportament),
              textBlobCentr(getUserDeportament(e.usersDeportament).deportament),
              textBlobCentr(e.attestat),
              textBlobCentr(e.date.toString()),
              textBlobCentr(e.k1.toString()),
              textBlobCentr(e.k2.toString()),
              textBlobCentr(e.kz.toString()),
              textBlobCentr(e.k3.toString()),
              textBlobCentr(e.k4.toString()),
              textBlobCentr(e.pa.toString()),
            ]);
          }).toList(),
  );
}

UsersDeportament getUserDeportament(List<UsersDeportament>? data) {
  UsersDeportament result = UsersDeportament()
    ..fio = ''
    ..deportament = '';
  if (data == null) {
    return result;
  }
  for (var element in data) {
    if (element.boss) {
      result.fio = element.fio;
      result.deportament = element.deportament;
      element.lab.isNotEmpty
          ? result.deportament = '${result.deportament}/${element.lab}'
          : null;
    }
  }
  return result;
}
