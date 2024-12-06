import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:exceler_plus_flutter/features/arm/data/dto/arm_dto.dart';
import 'package:exceler_plus_flutter/features/arm/data/i_repository.dart';
import 'package:filesystem_picker/filesystem_picker.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

part 'load_arms_event.dart';
part 'load_arms_state.dart';

@injectable
class LoadArmsBloc extends Bloc<LoadArmsEvent, LoadArmsState> {
  IRepository repo;
  LoadArmsBloc(this.repo) : super(LoadArmsInitial()) {
    on<ClickButtonOpenFile>((event, emit) async {
      // state.dirBD = await repo.getPathBD();
      final path = await FilesystemPicker.openDialog(
        context:
            event.context.mounted ? event.context : throw ('Context unmount'),
        rootDirectory: pachBD,
        directory: await pachDouments,
        fsType: FilesystemType.file,
        allowedExtensions: ['.csv'],
      );
      if (path == null) return;
      // state.pathFile = path;
      // state.arms = await repo.getArms(path);
      emit(state.copyWith());
    });
    on<ChangeTabBar>(
      (event, emit) async {},
    );
  }

  init() async {
    // state.dirBD = await repo.getPathBD();
    // if (state.dirBD == repo.nidLoad) {}
    emit(state.copyWith());
  }

  Directory get pachBD => Directory.fromUri(Uri.directory('/'));
  Future<Directory> get pachDouments async =>
      getApplicationDocumentsDirectory();
}
