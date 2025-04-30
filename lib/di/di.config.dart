// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i16;

import '../features/arm/data/datasource/file_data_source_impl.dart' as _i7;
import '../features/arm/data/datasource/isar_data_source_impl.dart' as _i6;
import '../features/arm/data/i_data_source.dart' as _i5;
import '../features/arm/data/i_repository.dart' as _i10;
import '../features/arm/data/repository/arm_repository_impl.dart' as _i11;
import '../features/arm/presenter/bloc/load_arms_bloc.dart' as _i13;
import '../features/auth/data/repository/auth_data_impl.dart' as _i4;
import '../features/auth/domain/repositoty/i_auth_data.dart' as _i3;
import '../features/auth/presentation/cubit/auth_cubit.dart' as _i15;
import '../features/lic/data/repository/lic_data_impl.dart' as _i9;
import '../features/lic/domain/repository/i_lic_data.dart' as _i8;
import '../features/lic/presentation/cubit/lic_cubit.dart' as _i12;
import '../features/main/data/repository/main_repo_impl.dart' as _i18;
import '../features/main/domain/repository/i_main_repo.dart' as _i17;
import '../features/main/presenter/bloc/main_bloc.dart' as _i19;
import '../features/main/presenter/cubit/user_cubit.dart' as _i14;
import 'di.dart' as _i20;

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
    gh.singleton<_i10.IRepository>(() => _i11.ArmRepositoryImpl(
          gh<_i5.IDataSource>(instanceName: 'FileDataSourceImpl'),
          gh<_i5.IDataSource>(instanceName: 'IsarDataSourceImpl'),
        ));
    gh.factory<_i12.LicCubit>(() => _i12.LicCubit(gh<_i8.ILicData>()));
    gh.factory<_i13.LoadArmsBloc>(
        () => _i13.LoadArmsBloc(gh<_i10.IRepository>()));
    gh.factory<String>(
      () => registryModule.dbName,
      instanceName: 'DbTables',
    );
    gh.factory<_i14.UserCubit>(() => _i14.UserCubit(gh<_i3.IAuthData>()));
    gh.factory<_i15.AuthCubit>(() => _i15.AuthCubit(gh<_i3.IAuthData>()));
    gh.lazySingleton<_i16.Isar>(
        () => registryModule.db(gh<String>(instanceName: 'DbTables')));
    gh.singleton<_i17.IMainRepo>(() => _i18.MainRepoImpl(gh<_i16.Isar>()));
    gh.factory<_i19.MainBloc>(() => _i19.MainBloc(gh<_i17.IMainRepo>()));
    return this;
  }
}

class _$RegistryModule extends _i20.RegistryModule {}
