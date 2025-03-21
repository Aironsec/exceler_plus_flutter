import 'package:exceler_plus_flutter/core/untils/db_utils.dart';

abstract class IMainRepo extends OpenDB {
  IMainRepo({super.dbName = 'ibservce'});

  int getIndex();
  setIndex(int index);
}
