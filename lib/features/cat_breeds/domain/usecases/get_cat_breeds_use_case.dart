import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/domain/repositories/cat_breeds_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCatBreedsUseCase {
  final CatBreedsRepository _repository;

  GetCatBreedsUseCase(this._repository);

  Future<Either<ApiFailure, List<CatBreed>>> execute({
    required int page,
    required int limit,
  }) async {
    return _repository.getBreeds(page: page, limit: limit);
  }
}
