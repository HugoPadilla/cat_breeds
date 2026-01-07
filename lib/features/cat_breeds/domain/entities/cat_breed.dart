import 'package:equatable/equatable.dart';

class CatBreed extends Equatable {
  final String id;
  final String name;
  final String? temperament;
  final String origin;
  final String description;
  final String lifeSpan;
  final String? imageUrl;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int? sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final int? experimental;
  final int? hairless;
  final int? natural;
  final int? rare;
  final int? rex;
  final int? suppressedTail;
  final int? shortLegs;
  final String? wikipediaUrl;
  final int? hypoallergenic;
  final String? referenceImageId;

  const CatBreed({
    required this.id,
    required this.name,
    this.temperament,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    this.imageUrl,
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
  });

  @override
  List<Object?> get props => <Object?>[
    id,
    name,
    temperament,
    origin,
    description,
    lifeSpan,
    imageUrl,
    adaptability,
    affectionLevel,
    childFriendly,
    dogFriendly,
    energyLevel,
    grooming,
    healthIssues,
    intelligence,
    sheddingLevel,
    socialNeeds,
    strangerFriendly,
    vocalisation,
    experimental,
    hairless,
    natural,
    rare,
    rex,
    suppressedTail,
    shortLegs,
    wikipediaUrl,
    hypoallergenic,
    referenceImageId,
  ];
}
