// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../home/data/data_source.dart' as _i3;
import '../home/data/datasource/file_data_source_impl.dart' as _i5;
import '../home/data/datasource/isar_data_source_impl.dart' as _i4;
import '../home/data/repository.dart' as _i6;
import '../home/data/repository/arm_repository_impl.dart' as _i7;
import '../home/presenter/bloc/load_arms_bloc.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.IDataSource>(
      () => _i4.IsarDataSourceImpl(),
      instanceName: 'IsarDataSourceImpl',
    );
    gh.singleton<_i3.IDataSource>(
      () => _i5.FileDataSourceImpl(),
      instanceName: 'FileDataSourceImpl',
    );
    gh.singleton<_i6.IRepository>(() => _i7.ArmRepositoryImpl(
          gh<_i3.IDataSource>(instanceName: 'FileDataSourceImpl'),
          gh<_i3.IDataSource>(instanceName: 'IsarDataSourceImpl'),
        ));
    gh.factory<_i8.LoadArmsBloc>(() => _i8.LoadArmsBloc(gh<_i6.IRepository>()));
    return this;
  }
}
