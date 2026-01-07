import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:dartz/dartz.dart';

abstract class CatBreedsLocalDatasource {
  Future<void> saveBreeds(List<CatBreedDto> breeds);

  Future<Either<Exception, List<CatBreedDto>>> getBreeds({
    required int page,
    required int limit,
  });

  Future<void> clearBreeds();
}
