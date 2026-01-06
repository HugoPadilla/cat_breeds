import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';

class CatBreedMapper {
  static CatBreed toEntity(CatBreedDto dto) {
    return CatBreed(
      id: dto.id,
      name: dto.name,
      origin: dto.origin,
      description: dto.description,
      lifeSpan: dto.lifeSpan,
      imageUrl: dto.image?.url ?? '',
      intelligence: dto.intelligence,
      adaptability: dto.adaptability,
    );
  }
}
