import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/features/cat_breeds/data/mappers/cat_breed_mapper.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_local_datasource.dart';
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_remote_datasource.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/domain/repositories/cat_breeds_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CatBreedsRepository)
class CatBreedsRepositoryImpl implements CatBreedsRepository {
  final CatBreedsRemoteDatasource _remoteDatasource;
  final CatBreedsLocalDatasource _localDatasource;

  CatBreedsRepositoryImpl(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<ApiFailure, List<CatBreed>>> getBreeds({
    required int page,
    required int limit,
  }) async {
    // Try remote first (Network-first strategy)
    try {
      final Either<Exception, List<CatBreedDto>> remoteResult =
          await _remoteDatasource.getBreeds(page: page, limit: limit);

      return await remoteResult.fold(
        (Exception remoteException) async {
          // If remote fails, try local
          return _fetchFromLocal(page, limit, remoteException);
        },
        (List<CatBreedDto> dtos) async {
          // Save to local
          await _localDatasource.saveBreeds(dtos);
          return Right(_mapDtosToEntities(dtos));
        },
      );
    } catch (e) {
      // If unexpected error (e.g. network), try local
      return _fetchFromLocal(page, limit, Exception(e.toString()));
    }
  }

  Future<Either<ApiFailure, List<CatBreed>>> _fetchFromLocal(
    int page,
    int limit,
    Exception originalException,
  ) async {
    try {
      final Either<Exception, List<CatBreedDto>> localResult =
          await _localDatasource.getBreeds(page: page, limit: limit);

      return localResult.fold(
        (Exception localException) {
          // If local also fails, return original error
          return Left(ServerFailure(originalException.toString()));
        },
        (List<CatBreedDto> dtos) {
          if (dtos.isEmpty) {
            // If local is empty, might interpret as error or just empty.
            // Returning error if it was a fetch failure is safer for UI Retry.
            return Left(ServerFailure(originalException.toString()));
          }
          return Right(_mapDtosToEntities(dtos));
        },
      );
    } catch (e) {
      return Left(ServerFailure(originalException.toString()));
    }
  }

  List<CatBreed> _mapDtosToEntities(List<CatBreedDto> dtos) {
    return dtos.map((CatBreedDto dto) => CatBreedMapper.toEntity(dto)).toList();
  }
}
