import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'table_arm_event.dart';
part 'table_arm_state.dart';

class TableArmBloc extends Bloc<TableArmEvent, TableArmState> {
  TableArmBloc() : super(TableArmInitial()) {
    on<TableArmEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
