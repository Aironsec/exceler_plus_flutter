import 'dart:io';

import 'package:exceler_plus_flutter/features/main/data/isar/bid_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/brit_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/plane_works_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/specification_data.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

@module
abstract class RegistryModule {
  @Named('DbTables')
  String get dbName => 'database_tables';

  @lazySingleton
  Isar db(@Named('DbTables') String db) => Isar.openSync(
      name: db,
      [
        DeadlinesDataSchema,
        SpecificationDataSchema,
        PlaneWorksDataSchema,
        BidDataSchema,
        BritDataSchema,
      ],
      directory: Directory.current.path);
}
