// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breed_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatBreedDto _$CatBreedDtoFromJson(Map<String, dynamic> json) => CatBreedDto(
  id: json['id'] as String,
  name: json['name'] as String,
  temperament: json['temperament'] as String?,
  origin: json['origin'] as String,
  description: json['description'] as String,
  lifeSpan: json['life_span'] as String,
  adaptability: (json['adaptability'] as num).toInt(),
  affectionLevel: (json['affection_level'] as num).toInt(),
  childFriendly: (json['child_friendly'] as num).toInt(),
  dogFriendly: (json['dog_friendly'] as num).toInt(),
  energyLevel: (json['energy_level'] as num).toInt(),
  grooming: (json['grooming'] as num).toInt(),
  healthIssues: (json['health_issues'] as num).toInt(),
  intelligence: (json['intelligence'] as num).toInt(),
  sheddingLevel: (json['shedding_level'] as num?)?.toInt(),
  socialNeeds: (json['social_needs'] as num).toInt(),
  strangerFriendly: (json['stranger_friendly'] as num).toInt(),
  vocalisation: (json['vocalisation'] as num).toInt(),
  experimental: (json['experimental'] as num?)?.toInt(),
  hairless: (json['hairless'] as num?)?.toInt(),
  natural: (json['natural'] as num?)?.toInt(),
  rare: (json['rare'] as num?)?.toInt(),
  rex: (json['rex'] as num?)?.toInt(),
  suppressedTail: (json['suppressed_tail'] as num?)?.toInt(),
  shortLegs: (json['short_legs'] as num?)?.toInt(),
  wikipediaUrl: json['wikipedia_url'] as String?,
  hypoallergenic: (json['hypoallergenic'] as num?)?.toInt(),
  referenceImageId: json['reference_image_id'] as String?,
  image: json['image'] == null
      ? null
      : CatImageDto.fromJson(json['image'] as Map<String, dynamic>),
  weight: json['weight'] == null
      ? null
      : WeightDto.fromJson(json['weight'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CatBreedDtoToJson(CatBreedDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'description': instance.description,
      'life_span': instance.lifeSpan,
      'adaptability': instance.adaptability,
      'affection_level': instance.affectionLevel,
      'child_friendly': instance.childFriendly,
      'dog_friendly': instance.dogFriendly,
      'energy_level': instance.energyLevel,
      'grooming': instance.grooming,
      'health_issues': instance.healthIssues,
      'intelligence': instance.intelligence,
      'shedding_level': instance.sheddingLevel,
      'social_needs': instance.socialNeeds,
      'stranger_friendly': instance.strangerFriendly,
      'vocalisation': instance.vocalisation,
      'experimental': instance.experimental,
      'hairless': instance.hairless,
      'natural': instance.natural,
      'rare': instance.rare,
      'rex': instance.rex,
      'suppressed_tail': instance.suppressedTail,
      'short_legs': instance.shortLegs,
      'wikipedia_url': instance.wikipediaUrl,
      'hypoallergenic': instance.hypoallergenic,
      'reference_image_id': instance.referenceImageId,
      'image': instance.image,
      'weight': instance.weight,
    };

CatImageDto _$CatImageDtoFromJson(Map<String, dynamic> json) => CatImageDto(
  id: json['id'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic> _$CatImageDtoToJson(CatImageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
    };

WeightDto _$WeightDtoFromJson(Map<String, dynamic> json) => WeightDto(
  imperial: json['imperial'] as String?,
  metric: json['metric'] as String?,
);

Map<String, dynamic> _$WeightDtoToJson(WeightDto instance) => <String, dynamic>{
  'imperial': instance.imperial,
  'metric': instance.metric,
};
