import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/features/cat_breeds/data/mappers/cat_breed_mapper.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_datasource.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/domain/repositories/cat_breeds_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CatBreedsRepository)
class CatBreedsRepositoryImpl implements CatBreedsRepository {
  final CatBreedsDatasource _datasource;

  CatBreedsRepositoryImpl(this._datasource);

  @override
  Future<Either<ApiFailure, List<CatBreed>>> getBreeds() async {
    try {
      final Either<Exception, List<CatBreedDto>> result = await _datasource
          .getBreeds();
      return result.fold(
        (Exception exception) => Left<ApiFailure, List<CatBreed>>(
          ServerFailure(exception.toString()),
        ),
        (List<CatBreedDto> dtos) {
          final List<CatBreed> entities = dtos
              .map((CatBreedDto dto) => CatBreedMapper.toEntity(dto))
              .toList();
          return Right<ApiFailure, List<CatBreed>>(entities);
        },
      );
    } catch (e) {
      return Left<ApiFailure, List<CatBreed>>(UnknownFailure(e.toString()));
    }
  }
}
