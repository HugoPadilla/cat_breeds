import 'package:cat_breeds/core/network/api_client.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CatBreedsRemoteDatasource)
class CatBreedsRemoteDatasourceImpl implements CatBreedsRemoteDatasource {
  final ApiClient _apiClient;

  CatBreedsRemoteDatasourceImpl(this._apiClient);

  @override
  Future<Either<Exception, List<CatBreedDto>>> getBreeds({
    required int page,
    required int limit,
  }) async {
    try {
      final dynamic response = await _apiClient.get(
        '/breeds',
        queryParameters: {'limit': limit, 'page': page},
      );
      final List<dynamic> data = response as List<dynamic>;
      final List<CatBreedDto> breeds = data
          .map((dynamic json) => CatBreedDto.fromJson(json))
          .toList();
      return Right<Exception, List<CatBreedDto>>(breeds);
    } catch (e) {
      return Left<Exception, List<CatBreedDto>>(
        Exception('Failed to load breeds: $e'),
      );
    }
  }
}
