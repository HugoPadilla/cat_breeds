import 'package:cat_breeds/features/cat_breeds/data/mappers/cat_breed_mapper.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CatBreedMapper', () {
    test('toEntity should convert CatBreedDto to CatBreed correctly', () {
      final dto = CatBreedDto(
        id: 'abys',
        name: 'Abyssinian',
        temperament: 'Active',
        origin: 'Egypt',
        description: 'Description',
        lifeSpan: '14 - 15',
        adaptability: 5,
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
        image: CatImageDto(
          url: 'http://image.url',
          width: 100,
          height: 100,
          id: 'img1',
        ),
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

      final result = CatBreedMapper.toEntity(dto);

      expect(result, isA<CatBreed>());
      expect(result.id, dto.id);
      expect(result.name, dto.name);
      expect(result.temperament, dto.temperament);
      expect(result.origin, dto.origin);
      expect(result.description, dto.description);
      expect(result.lifeSpan, dto.lifeSpan);
      expect(result.imageUrl, dto.image?.url);
      expect(result.intelligence, dto.intelligence);
      expect(result.adaptability, dto.adaptability);
      expect(result.affectionLevel, dto.affectionLevel);
      expect(result.childFriendly, dto.childFriendly);
      expect(result.dogFriendly, dto.dogFriendly);
      expect(result.energyLevel, dto.energyLevel);
      expect(result.grooming, dto.grooming);
      expect(result.healthIssues, dto.healthIssues);
      expect(result.sheddingLevel, dto.sheddingLevel);
      expect(result.socialNeeds, dto.socialNeeds);
      expect(result.strangerFriendly, dto.strangerFriendly);
      expect(result.vocalisation, dto.vocalisation);
      expect(result.experimental, dto.experimental);
      expect(result.hairless, dto.hairless);
      expect(result.natural, dto.natural);
      expect(result.rare, dto.rare);
      expect(result.rex, dto.rex);
      expect(result.suppressedTail, dto.suppressedTail);
      expect(result.shortLegs, dto.shortLegs);
      expect(result.wikipediaUrl, dto.wikipediaUrl);
      expect(result.hypoallergenic, dto.hypoallergenic);
      expect(result.referenceImageId, dto.referenceImageId);
    });

    test('toEntity should handle null image url by providing empty string', () {
      final dto = CatBreedDto(
        id: 'abys',
        name: 'Abyssinian',
        origin: 'Egypt',
        description: 'Description',
        lifeSpan: '14 - 15',
        adaptability: 5,
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
        image: null,
      );

      final result = CatBreedMapper.toEntity(dto);

      expect(result.imageUrl, '');
    });
  });
}
