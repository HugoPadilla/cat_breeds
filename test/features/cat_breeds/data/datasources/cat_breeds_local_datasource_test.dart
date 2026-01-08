import 'package:cat_breeds/core/database/app_database.dart';
import 'package:cat_breeds/features/cat_breeds/data/datasources/cat_breeds_local_datasource_impl.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppDatabase database;
  late CatBreedsLocalDatasourceImpl datasource;

  setUp(() {
    database = AppDatabase(NativeDatabase.memory());
    datasource = CatBreedsLocalDatasourceImpl(database);
  });

  tearDown(() async {
    await database.close();
  });

  final CatBreedDto catBreedDto = CatBreedDto(
    id: 'test_id',
    name: 'Test Breed',
    temperament: 'Friendly',
    origin: 'Test Origin',
    description: 'Test Description',
    lifeSpan: '10-12',
    adaptability: 5,
    intelligence: 4,
    affectionLevel: 5,
    childFriendly: 4,
    dogFriendly: 3,
    energyLevel: 5,
    grooming: 2,
    healthIssues: 1,
    sheddingLevel: 3,
    socialNeeds: 4,
    strangerFriendly: 3,
    vocalisation: 2,
    experimental: 0,
    hairless: 0,
    natural: 1,
    rare: 0,
    rex: 0,
    suppressedTail: 0,
    shortLegs: 0,
    wikipediaUrl: 'http://test.com',
    hypoallergenic: 0,
    referenceImageId: 'ref_img_id',
    image: CatImageDto(url: 'http://image.url'),
  );

  group('CatBreedsLocalDatasourceImpl', () {
    test('saveBreeds should verify inserted data', () async {
      await datasource.saveBreeds(<CatBreedDto>[catBreedDto]);

      final List<CatBreedsTableData> allBreeds = await database
          .select(database.catBreedsTable)
          .get();
      expect(allBreeds.length, 1);

      final CatBreedsTableData storedBreed = allBreeds.first;
      expect(storedBreed.id, catBreedDto.id);
      expect(storedBreed.name, catBreedDto.name);
      expect(storedBreed.temperament, catBreedDto.temperament);
      expect(storedBreed.imageUrl, catBreedDto.image?.url);
    });

    test('getBreeds should return mapped DTOs', () async {
      await datasource.saveBreeds(<CatBreedDto>[catBreedDto]);

      final Either<Exception, List<CatBreedDto>> result = await datasource
          .getBreeds(page: 0, limit: 10);

      result.fold(
        (Exception l) => fail('Should return Right, but returned Left: $l'),
        (List<CatBreedDto> r) {
          expect(r.length, 1);
          final CatBreedDto fetchedDto = r.first;
          expect(fetchedDto.id, catBreedDto.id);
          expect(fetchedDto.name, catBreedDto.name);
          expect(fetchedDto.temperament, catBreedDto.temperament);
          expect(fetchedDto.image?.url, catBreedDto.image?.url);
        },
      );
    });
  });
}
