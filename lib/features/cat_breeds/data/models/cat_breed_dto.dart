import 'package:json_annotation/json_annotation.dart';

part 'cat_breed_dto.g.dart';

@JsonSerializable()
class CatBreedDto {
  final String id;
  final String name;
  final String? temperament;
  final String origin;
  final String description;
  @JsonKey(name: 'life_span')
  final String lifeSpan;
  final int adaptability;
  @JsonKey(name: 'affection_level')
  final int affectionLevel;
  @JsonKey(name: 'child_friendly')
  final int childFriendly;
  @JsonKey(name: 'dog_friendly')
  final int dogFriendly;
  @JsonKey(name: 'energy_level')
  final int energyLevel;
  final int grooming;
  @JsonKey(name: 'health_issues')
  final int healthIssues;
  final int intelligence;
  @JsonKey(name: 'shedding_level')
  final int? sheddingLevel;
  @JsonKey(name: 'social_needs')
  final int socialNeeds;
  @JsonKey(name: 'stranger_friendly')
  final int strangerFriendly;
  final int vocalisation;
  final int? experimental;
  final int? hairless;
  final int? natural;
  final int? rare;
  final int? rex;
  @JsonKey(name: 'suppressed_tail')
  final int? suppressedTail;
  @JsonKey(name: 'short_legs')
  final int? shortLegs;
  @JsonKey(name: 'wikipedia_url')
  final String? wikipediaUrl;
  final int? hypoallergenic;
  @JsonKey(name: 'reference_image_id')
  final String? referenceImageId;
  final CatImageDto? image;
  final WeightDto? weight;

  CatBreedDto({
    required this.id,
    required this.name,
    this.temperament,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.wikipediaUrl,
    this.hypoallergenic,
    this.referenceImageId,
    this.image,
    this.weight,
  });

  factory CatBreedDto.fromJson(Map<String, dynamic> json) =>
      _$CatBreedDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CatBreedDtoToJson(this);
}

@JsonSerializable()
class CatImageDto {
  final String? id;
  final int? width;
  final int? height;
  final String? url;

  CatImageDto({this.id, this.width, this.height, this.url});

  factory CatImageDto.fromJson(Map<String, dynamic> json) =>
      _$CatImageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CatImageDtoToJson(this);
}

@JsonSerializable()
class WeightDto {
  final String? imperial;
  final String? metric;

  WeightDto({this.imperial, this.metric});

  factory WeightDto.fromJson(Map<String, dynamic> json) =>
      _$WeightDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeightDtoToJson(this);
}
