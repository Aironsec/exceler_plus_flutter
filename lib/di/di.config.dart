// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../features/arm/data/datasource/file_data_source_impl.dart' as _i5;
import '../features/arm/data/datasource/isar_data_source_impl.dart' as _i4;
import '../features/arm/data/i_data_source.dart' as _i3;
import '../features/arm/data/i_repository.dart' as _i9;
import '../features/arm/data/repository/arm_repository_impl.dart' as _i10;
import '../features/arm/presenter/bloc/load_arms_bloc.dart' as _i11;
import '../features/main/bloc/bloc/main_bloc.dart' as _i12;
import '../features/main/repository/i_repo_main.dart' as _i7;
import '../features/main/repository/repo_main.dart' as _i8;
import 'di.dart' as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registryModule = _$RegistryModule();
    gh.singleton<_i3.IDataSource>(
      () => _i4.IsarDataSourceImpl(),
      instanceName: 'IsarDataSourceImpl',
    );
    gh.singleton<_i3.IDataSource>(
      () => _i5.FileDataSourceImpl(),
      instanceName: 'FileDataSourceImpl',
    );
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => registryModule.pref,
      preResolve: true,
    );
    gh.singleton<_i7.IRepoMain>(
        () => _i8.RepoMain(gh<_i6.SharedPreferences>()));
    gh.singleton<_i9.IRepository>(() => _i10.ArmRepositoryImpl(
          gh<_i3.IDataSource>(instanceName: 'FileDataSourceImpl'),
          gh<_i3.IDataSource>(instanceName: 'IsarDataSourceImpl'),
          gh<_i6.SharedPreferences>(),
        ));
    gh.factory<_i11.LoadArmsBloc>(
        () => _i11.LoadArmsBloc(gh<_i9.IRepository>()));
    gh.factory<_i12.MainBloc>(() => _i12.MainBloc(gh<_i7.IRepoMain>()));
    return this;
  }
}

class _$RegistryModule extends _i13.RegistryModule {}
