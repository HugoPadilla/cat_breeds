// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cat_breeds/core/database/app_database.dart' as _i1011;
import 'package:cat_breeds/core/database/drift_database_manager.dart' as _i731;
import 'package:cat_breeds/core/network/api_client.dart' as _i396;
import 'package:cat_breeds/core/network/dio_client.dart' as _i113;
import 'package:cat_breeds/di/app_module.dart' as _i1059;
import 'package:cat_breeds/features/cat_breeds/data/datasources/cat_breeds_local_datasource_impl.dart'
    as _i564;
import 'package:cat_breeds/features/cat_breeds/data/datasources/cat_breeds_remote_datasource_impl.dart'
    as _i471;
import 'package:cat_breeds/features/cat_breeds/data/repositories/cat_breeds_repository_impl.dart'
    as _i1061;
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_local_datasource.dart'
    as _i862;
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_remote_datasource.dart'
    as _i1016;
import 'package:cat_breeds/features/cat_breeds/domain/repositories/cat_breeds_repository.dart'
    as _i948;
import 'package:cat_breeds/features/cat_breeds/domain/usecases/get_cat_breeds_use_case.dart'
    as _i161;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.lazySingleton<_i1011.AppDatabase>(() => appModule.appDatabase);
    gh.lazySingleton<_i731.DriftDatabaseManager>(
      () => _i731.DriftDatabaseManagerImpl(),
    );
    gh.lazySingleton<_i396.ApiClient>(() => _i113.DioClient());
    gh.lazySingleton<_i862.CatBreedsLocalDatasource>(
      () => _i564.CatBreedsLocalDatasourceImpl(gh<_i1011.AppDatabase>()),
    );
    gh.lazySingleton<_i1016.CatBreedsRemoteDatasource>(
      () => _i471.CatBreedsRemoteDatasourceImpl(gh<_i396.ApiClient>()),
    );
    gh.lazySingleton<_i948.CatBreedsRepository>(
      () => _i1061.CatBreedsRepositoryImpl(
        gh<_i1016.CatBreedsRemoteDatasource>(),
        gh<_i862.CatBreedsLocalDatasource>(),
      ),
    );
    gh.lazySingleton<_i161.GetCatBreedsUseCase>(
      () => _i161.GetCatBreedsUseCase(gh<_i948.CatBreedsRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i1059.AppModule {}
