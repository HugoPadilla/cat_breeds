import 'package:cat_breeds/config/network/dio_client.dart';
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_datasource.dart';
import 'package:cat_breeds/features/cat_breeds/infrastructure/models/cat_breed_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/src/response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CatBreedsDatasource)
class CatBreedsDatasourceImpl implements CatBreedsDatasource {
  final DioClient _dioClient;

  CatBreedsDatasourceImpl(this._dioClient);

  @override
  Future<Either<Exception, List<CatBreedDto>>> getBreeds() async {
    try {
      final Response<dynamic> response = await _dioClient.dio.get('/breeds');
      final List<dynamic> data = response.data;
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
