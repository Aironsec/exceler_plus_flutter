// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../features/arm/data/datasource/file_data_source_impl.dart' as _i7;
import '../features/arm/data/datasource/isar_data_source_impl.dart' as _i6;
import '../features/arm/data/i_data_source.dart' as _i5;
import '../features/arm/data/i_repository.dart' as _i12;
import '../features/arm/data/repository/arm_repository_impl.dart' as _i13;
import '../features/arm/presenter/bloc/load_arms_bloc.dart' as _i14;
import '../features/auth/data/repository/auth_data_impl.dart' as _i4;
import '../features/auth/domain/repositoty/i_auth_data.dart' as _i3;
import '../features/auth/presentation/cubit/auth_cubit.dart' as _i9;
import '../features/main/bloc/bloc/main_bloc.dart' as _i15;
import '../features/main/repository/i_repo_main.dart' as _i10;
import '../features/main/repository/repo_main.dart' as _i11;
import 'di.dart' as _i16;

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
    gh.singleton<_i3.IAuthData>(() => _i4.AuthDataImpl());
    gh.singleton<_i5.IDataSource>(
      () => _i6.IsarDataSourceImpl(),
      instanceName: 'IsarDataSourceImpl',
    );
    gh.singleton<_i5.IDataSource>(
      () => _i7.FileDataSourceImpl(),
      instanceName: 'FileDataSourceImpl',
    );
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => registryModule.pref,
      preResolve: true,
    );
    gh.factory<_i9.AuthCubit>(() => _i9.AuthCubit(gh<_i3.IAuthData>()));
    gh.singleton<_i10.IRepoMain>(
        () => _i11.RepoMain(gh<_i8.SharedPreferences>()));
    gh.singleton<_i12.IRepository>(() => _i13.ArmRepositoryImpl(
          gh<_i5.IDataSource>(instanceName: 'FileDataSourceImpl'),
          gh<_i5.IDataSource>(instanceName: 'IsarDataSourceImpl'),
          gh<_i8.SharedPreferences>(),
        ));
    gh.factory<_i14.LoadArmsBloc>(
        () => _i14.LoadArmsBloc(gh<_i12.IRepository>()));
    gh.factory<_i15.MainBloc>(() => _i15.MainBloc(gh<_i10.IRepoMain>()));
    return this;
  }
}

class _$RegistryModule extends _i16.RegistryModule {}
