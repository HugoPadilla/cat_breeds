// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cat_breeds/core/network/api_client.dart' as _i396;
import 'package:cat_breeds/core/network/dio_client.dart' as _i113;
import 'package:cat_breeds/features/cat_breeds/data/datasources/cat_breeds_datasource.dart'
    as _i608;
import 'package:cat_breeds/features/cat_breeds/data/repositories/cat_breeds_repository_impl.dart'
    as _i1061;
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_datasource.dart'
    as _i141;
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
    gh.lazySingleton<_i396.ApiClient>(() => _i113.DioClient());
    gh.lazySingleton<_i141.CatBreedsDatasource>(
      () => _i608.CatBreedsDatasourceImpl(gh<_i396.ApiClient>()),
    );
    gh.lazySingleton<_i948.CatBreedsRepository>(
      () => _i1061.CatBreedsRepositoryImpl(gh<_i141.CatBreedsDatasource>()),
    );
    gh.lazySingleton<_i161.GetCatBreedsUseCase>(
      () => _i161.GetCatBreedsUseCase(gh<_i948.CatBreedsRepository>()),
    );
    return this;
  }
}
