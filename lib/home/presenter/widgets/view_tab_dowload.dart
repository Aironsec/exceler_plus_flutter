import 'package:exceler_plus_flutter/core/presentation/frame_in_out.dart';
import 'package:exceler_plus_flutter/home/presenter/bloc/load_arms_bloc.dart';
import 'package:exceler_plus_flutter/home/presenter/widgets/table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewTabDowload extends StatelessWidget {
  const ViewTabDowload({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildLeftCol(),
          _buildRightCol(),
        ],
      ),
    );
  }
}

Widget _buildLeftCol() {
  return Expanded(
    child: frameInOut(const BuildTable()),
  );
}

Widget _buildRightCol() {
  return frameInOut(_rightPanel());
}

Widget _rightPanel() {
  return BlocBuilder<LoadArmsBloc, LoadArmsState>(
    builder: (context, state) {
      return Column(
        children: [
          TextButton(
              onPressed: () {
                context.read<LoadArmsBloc>().add(OpenFile(context));
              },
              child: const Text('Загрузить файл')),
          Text(
            state.pathFile,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    },
  );
}
