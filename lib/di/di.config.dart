// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../features/arm/data/datasource/file_data_source_impl.dart' as _i7;
import '../features/arm/data/datasource/isar_data_source_impl.dart' as _i6;
import '../features/arm/data/i_data_source.dart' as _i5;
import '../features/arm/data/i_repository.dart' as _i16;
import '../features/arm/data/repository/arm_repository_impl.dart' as _i17;
import '../features/arm/presenter/bloc/load_arms_bloc.dart' as _i18;
import '../features/auth/data/repository/auth_data_impl.dart' as _i4;
import '../features/auth/domain/repositoty/i_auth_data.dart' as _i3;
import '../features/auth/presentation/cubit/auth_cubit.dart' as _i13;
import '../features/lic/data/repository/lic_data_impl.dart' as _i9;
import '../features/lic/domain/repository/i_lic_data.dart' as _i8;
import '../features/lic/presentation/cubit/lic_cubit.dart' as _i10;
import '../features/main/presenter/bloc/main_bloc.dart' as _i19;
import '../features/main/presenter/cubit/user_cubit.dart' as _i12;
import '../features/main/repository/i_repo_main.dart' as _i14;
import '../features/main/repository/repo_main.dart' as _i15;
import 'di.dart' as _i20;

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
    gh.singleton<_i8.ILicData>(() => _i9.LicDataImpl());
    gh.factory<_i10.LicCubit>(() => _i10.LicCubit(gh<_i8.ILicData>()));
    await gh.factoryAsync<_i11.SharedPreferences>(
      () => registryModule.pref,
      preResolve: true,
    );
    gh.factory<_i12.UserCubit>(() => _i12.UserCubit(gh<_i3.IAuthData>()));
    gh.factory<_i13.AuthCubit>(() => _i13.AuthCubit(gh<_i3.IAuthData>()));
    gh.singleton<_i14.IRepoMain>(
        () => _i15.RepoMain(gh<_i11.SharedPreferences>()));
    gh.singleton<_i16.IRepository>(() => _i17.ArmRepositoryImpl(
          gh<_i5.IDataSource>(instanceName: 'FileDataSourceImpl'),
          gh<_i5.IDataSource>(instanceName: 'IsarDataSourceImpl'),
          gh<_i11.SharedPreferences>(),
        ));
    gh.factory<_i18.LoadArmsBloc>(
        () => _i18.LoadArmsBloc(gh<_i16.IRepository>()));
    gh.factory<_i19.MainBloc>(() => _i19.MainBloc(gh<_i14.IRepoMain>()));
    return this;
  }
}

class _$RegistryModule extends _i20.RegistryModule {}
