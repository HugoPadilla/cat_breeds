// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/network/api_client.dart' as _i510;
import '../core/network/dio_client.dart' as _i393;
import '../features/cat_breeds/data/datasources/cat_breeds_datasource.dart'
    as _i471;
import '../features/cat_breeds/domain/datasources/cat_breeds_datasource.dart'
    as _i401;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i510.ApiClient>(() => _i393.DioClient());
    gh.lazySingleton<_i401.CatBreedsDatasource>(
      () => _i471.CatBreedsDatasourceImpl(gh<_i510.ApiClient>()),
    );
    return this;
  }
}
