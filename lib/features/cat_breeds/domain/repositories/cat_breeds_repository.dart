import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:dartz/dartz.dart';

abstract class CatBreedsRepository {
  Future<Either<ApiFailure, List<CatBreed>>> getBreeds();
}
