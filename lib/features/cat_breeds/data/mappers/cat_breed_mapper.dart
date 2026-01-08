import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';

class CatBreedMapper {
  static CatBreed toEntity(CatBreedDto dto) {
    return CatBreed(
      id: dto.id,
      name: dto.name,
      temperament: dto.temperament,
      origin: dto.origin,
      description: dto.description,
      lifeSpan: dto.lifeSpan,
      imageUrl: dto.image?.url ?? '',
      intelligence: dto.intelligence,
      adaptability: dto.adaptability,
      affectionLevel: dto.affectionLevel,
      childFriendly: dto.childFriendly,
      dogFriendly: dto.dogFriendly,
      energyLevel: dto.energyLevel,
      grooming: dto.grooming,
      healthIssues: dto.healthIssues,
      sheddingLevel: dto.sheddingLevel,
      socialNeeds: dto.socialNeeds,
      strangerFriendly: dto.strangerFriendly,
      vocalisation: dto.vocalisation,
      experimental: dto.experimental,
      hairless: dto.hairless,
      natural: dto.natural,
      rare: dto.rare,
      rex: dto.rex,
      suppressedTail: dto.suppressedTail,
      shortLegs: dto.shortLegs,
      wikipediaUrl: dto.wikipediaUrl,
      hypoallergenic: dto.hypoallergenic,
      referenceImageId: dto.referenceImageId,
    );
  }
}
