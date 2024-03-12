import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:exceler_plus_flutter/data/entity/arm_entity.dart';
import 'package:exceler_plus_flutter/home/data/repository.dart';
import 'package:filesystem_picker/filesystem_picker.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

part 'load_arms_event.dart';
part 'load_arms_state.dart';

@injectable
class LoadArmsBloc extends Bloc<LoadArmsEvent, LoadArmsState> {
  IRepository repo;
  LoadArmsBloc(this.repo)
      : super(
          LoadArmsInitial(pathFile: 'Загрузите файл с данными по АРМ'),
        ) {
    on<OpenFile>((event, emit) async {
      final path = await FilesystemPicker.openDialog(
        context: event.context,
        rootDirectory: pachBD,
        directory: await pachDouments,
        fsType: FilesystemType.file,
        allowedExtensions: ['.csv'],
      );
      if (path == null) return;
      state.pathFile = path;
      state.arms = await repo.getFileArms(path);
      emit(state);
    });
  }

  Directory get pachBD => Directory.fromUri(Uri.directory('/'));
  Future<Directory> get pachDouments async =>
      getApplicationDocumentsDirectory();
}
