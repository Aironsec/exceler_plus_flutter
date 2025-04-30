import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';

abstract class IMainDataSource {
  List<DeadlinesData> getDeadlinesData(String source);
  List<DeadlinesData> getDeadlineDataQuarter(int qarter) => [];
}
