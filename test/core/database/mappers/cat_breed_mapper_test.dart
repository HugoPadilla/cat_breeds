import 'package:cat_breeds/core/database/app_database.dart';
import 'package:cat_breeds/core/database/mappers/cat_breed_mapper.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:drift/drift.dart' hide isNull;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Core CatBreedMapper', () {
    const breedId = 'abys';
    const breedName = 'Abyssinian';
    const breedOrigin = 'Egypt';
    const breedDescription = 'Description';
    const breedLifeSpan = '14 - 15';
    const breedAdaptability = 5;
    const breedUrl = 'http://image.url';

    final tableData = CatBreedsTableData(
      id: breedId,
      name: breedName,
      origin: breedOrigin,
      description: breedDescription,
      lifeSpan: breedLifeSpan,
      adaptability: breedAdaptability,
      affectionLevel: 5,
      childFriendly: 3,
      dogFriendly: 4,
      energyLevel: 5,
      grooming: 1,
      healthIssues: 2,
      intelligence: 5,
      socialNeeds: 5,
      strangerFriendly: 5,
      vocalisation: 1,
      imageUrl: breedUrl,
      // Optional fields
      temperament: 'Active',
      sheddingLevel: 2,
      experimental: 0,
      hairless: 0,
      natural: 1,
      rare: 0,
      rex: 0,
      suppressedTail: 0,
      shortLegs: 0,
      wikipediaUrl: 'http://wiki.url',
      hypoallergenic: 0,
      referenceImageId: 'ref1',
    );

    final dto = CatBreedDto(
      id: breedId,
      name: breedName,
      origin: breedOrigin,
      description: breedDescription,
      lifeSpan: breedLifeSpan,
      adaptability: breedAdaptability,
      affectionLevel: 5,
      childFriendly: 3,
      dogFriendly: 4,
      energyLevel: 5,
      grooming: 1,
      healthIssues: 2,
      intelligence: 5,
      socialNeeds: 5,
      strangerFriendly: 5,
      vocalisation: 1,
      image: CatImageDto(url: breedUrl),
      temperament: 'Active',
      sheddingLevel: 2,
      experimental: 0,
      hairless: 0,
      natural: 1,
      rare: 0,
      rex: 0,
      suppressedTail: 0,
      shortLegs: 0,
      wikipediaUrl: 'http://wiki.url',
      hypoallergenic: 0,
      referenceImageId: 'ref1',
    );

    test(
      'toEntity should convert CatBreedsTableData to CatBreed correctly',
      () {
        final CatBreed result = tableData.toEntity();

        expect(result.id, breedId);
        expect(result.name, breedName);
        expect(result.origin, breedOrigin);
        expect(result.imageUrl, breedUrl);
        expect(result.adaptability, breedAdaptability);
        expect(result.temperament, 'Active');
      },
    );

    test(
      'toDto should convert CatBreedsTableData to CatBreedDto correctly',
      () {
        final CatBreedDto result = tableData.toDto();

        expect(result.id, breedId);
        expect(result.name, breedName);
        expect(result.origin, breedOrigin);
        expect(result.image?.url, breedUrl);
        expect(result.adaptability, breedAdaptability);
      },
    );

    test(
      'toCompanion should convert CatBreedDto to CatBreedsTableCompanion correctly',
      () {
        final CatBreedsTableCompanion result = dto.toCompanion();

        expect(result.id.value, breedId);
        expect(result.name.value, breedName);
        expect(result.origin.value, breedOrigin);
        expect(result.imageUrl.value, breedUrl);
        expect(result.adaptability.value, breedAdaptability);
      },
    );

    test('toDto should handle null imageUrl', () {
      final dataWithoutImage = tableData.copyWith(imageUrl: const Value(null));
      final result = dataWithoutImage.toDto();
      expect(result.image, isNull);
    });
  });
}
