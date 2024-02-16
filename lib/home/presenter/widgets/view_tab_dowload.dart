import 'package:exceler_plus_flutter/home/presenter/widgets/table.dart';
import 'package:flutter/material.dart';

class ViewTabDowload extends StatelessWidget {
  const ViewTabDowload({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: BuildTable(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                TextButton(onPressed: null, child: Text('Загрузить')),
                Text('jshdjskskfdksfkskfslfsfkslflskfksfksfjsklfjslkfjkls'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
