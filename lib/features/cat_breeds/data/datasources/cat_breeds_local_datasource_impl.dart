import 'package:cat_breeds/core/database/app_database.dart';
import 'package:cat_breeds/core/database/mappers/cat_breed_mapper.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_local_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CatBreedsLocalDatasource)
class CatBreedsLocalDatasourceImpl implements CatBreedsLocalDatasource {
  final AppDatabase _db;

  CatBreedsLocalDatasourceImpl(this._db);

  @override
  Future<void> clearBreeds() async {
    await _db.delete(_db.catBreedsTable).go();
  }

  @override
  Future<Either<Exception, List<CatBreedDto>>> getBreeds({
    required int page,
    required int limit,
  }) async {
    try {
      final int offset = page * limit;
      final List<CatBreedsTableData> result = await (_db.select(
        _db.catBreedsTable,
      )..limit(limit, offset: offset)).get();

      final List<CatBreedDto> dtos = result
          .map((CatBreedsTableData data) => data.toDto())
          .toList();

      return Right(dtos);
    } catch (e) {
      return Left(Exception('Failed to load local breeds: $e'));
    }
  }

  @override
  Future<void> saveBreeds(List<CatBreedDto> breeds) async {
    await _db.batch((Batch batch) {
      batch.insertAll(
        _db.catBreedsTable,
        breeds.map((CatBreedDto breed) => breed.toCompanion()).toList(),
        mode: InsertMode.insertOrReplace,
      );
    });
  }
}
