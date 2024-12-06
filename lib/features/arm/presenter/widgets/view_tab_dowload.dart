import 'package:exceler_plus_flutter/core/presentation/frame_in_out.dart';
import 'package:exceler_plus_flutter/features/arm/presenter/bloc/load_arms_bloc.dart';
import 'package:exceler_plus_flutter/features/arm/presenter/widgets/table.dart';
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
    child: frameInOut(child: const BuildTable()),
  );
}

Widget _buildRightCol() {
  return SizedBox(width: 250, child: frameInOut(child: _rightPanel()));
}

Widget _rightPanel() {
  return BlocBuilder<LoadArmsBloc, LoadArmsState>(
    builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _actionRightPanel(
            context,
            state,
            'База данных',
          ),
          const Spacer(),
          _actionRightPanel(
            context,
            state,
            'Доступные файлы',
          ),
          const Spacer(),
        ],
      );
    },
  );
}

Widget _actionRightPanel(
  BuildContext context,
  LoadArmsState state,
  String title,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 2),
            left: BorderSide(width: 2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      Visibility.maintain(
        visible: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              context
                  .read<LoadArmsBloc>()
                  .add(ClickButtonOpenFile(context: context));
            },
            child: const Text('Загрузить...'),
          ),
        ),
      ),
      const DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2),
            left: BorderSide(width: 2),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'state.dirBD',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}

// Directory getPath() async {
//   final path = await FilesystemPicker.openDialog(
//         context: context,
//         rootDirectory: pachBD,
//         directory: await pachDouments,
//         fsType: FilesystemType.file,
//         allowedExtensions: ['.csv'],
//       );
// }