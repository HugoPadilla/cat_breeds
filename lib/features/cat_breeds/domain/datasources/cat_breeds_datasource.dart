import 'package:cat_breeds/features/cat_breeds/infrastructure/models/cat_breed_dto.dart';
import 'package:dartz/dartz.dart';

abstract class CatBreedsDatasource {
  Future<Either<Exception, List<CatBreedDto>>> getBreeds();
}
