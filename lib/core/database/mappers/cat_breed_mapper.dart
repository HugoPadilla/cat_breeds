import 'package:drift/drift.dart';

import '../../../features/cat_breeds/data/models/cat_breed_dto.dart';
import '../../../features/cat_breeds/domain/entities/cat_breed.dart';
import '../app_database.dart';

extension CatBreedMapper on CatBreedsTableData {
  CatBreed toEntity() {
    return CatBreed(
      id: id,
      name: name,
      temperament: temperament,
      origin: origin,
      description: description,
      lifeSpan: lifeSpan,
      imageUrl: imageUrl,
      adaptability: adaptability,
      affectionLevel: affectionLevel,
      childFriendly: childFriendly,
      dogFriendly: dogFriendly,
      energyLevel: energyLevel,
      grooming: grooming,
      healthIssues: healthIssues,
      intelligence: intelligence,
      sheddingLevel: sheddingLevel,
      socialNeeds: socialNeeds,
      strangerFriendly: strangerFriendly,
      vocalisation: vocalisation,
      experimental: experimental,
      hairless: hairless,
      natural: natural,
      rare: rare,
      rex: rex,
      suppressedTail: suppressedTail,
      shortLegs: shortLegs,
      wikipediaUrl: wikipediaUrl,
      hypoallergenic: hypoallergenic,
      referenceImageId: referenceImageId,
    );
  }

  CatBreedDto toDto() {
    return CatBreedDto(
      id: id,
      name: name,
      temperament: temperament,
      origin: origin,
      description: description,
      lifeSpan: lifeSpan,
      adaptability: adaptability,
      affectionLevel: affectionLevel,
      childFriendly: childFriendly,
      dogFriendly: dogFriendly,
      energyLevel: energyLevel,
      grooming: grooming,
      healthIssues: healthIssues,
      intelligence: intelligence,
      sheddingLevel: sheddingLevel,
      socialNeeds: socialNeeds,
      strangerFriendly: strangerFriendly,
      vocalisation: vocalisation,
      experimental: experimental,
      hairless: hairless,
      natural: natural,
      rare: rare,
      rex: rex,
      suppressedTail: suppressedTail,
      shortLegs: shortLegs,
      wikipediaUrl: wikipediaUrl,
      hypoallergenic: hypoallergenic,
      referenceImageId: referenceImageId,
      image: imageUrl != null ? CatImageDto(url: imageUrl) : null,
    );
  }
}

extension CatBreedDtoMapper on CatBreedDto {
  CatBreedsTableCompanion toCompanion() {
    return CatBreedsTableCompanion(
      id: Value(id),
      name: Value(name),
      temperament: Value(temperament),
      origin: Value(origin),
      description: Value(description),
      lifeSpan: Value(lifeSpan),
      imageUrl: Value(image?.url),
      adaptability: Value(adaptability),
      affectionLevel: Value(affectionLevel),
      childFriendly: Value(childFriendly),
      dogFriendly: Value(dogFriendly),
      energyLevel: Value(energyLevel),
      grooming: Value(grooming),
      healthIssues: Value(healthIssues),
      intelligence: Value(intelligence),
      sheddingLevel: Value(sheddingLevel),
      socialNeeds: Value(socialNeeds),
      strangerFriendly: Value(strangerFriendly),
      vocalisation: Value(vocalisation),
      experimental: Value(experimental),
      hairless: Value(hairless),
      natural: Value(natural),
      rare: Value(rare),
      rex: Value(rex),
      suppressedTail: Value(suppressedTail),
      shortLegs: Value(shortLegs),
      wikipediaUrl: Value(wikipediaUrl),
      hypoallergenic: Value(hypoallergenic),
      referenceImageId: Value(referenceImageId),
    );
  }
}
