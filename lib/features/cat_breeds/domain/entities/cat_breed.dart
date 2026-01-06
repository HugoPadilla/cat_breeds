import 'package:equatable/equatable.dart';

class CatBreed extends Equatable {
  final String id;
  final String name;
  final String origin;
  final String description;
  final String lifeSpan;
  final String? imageUrl;
  final int intelligence;
  final int adaptability;

  const CatBreed({
    required this.id,
    required this.name,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    this.imageUrl,
    required this.intelligence,
    required this.adaptability,
  });

  @override
  List<Object?> get props => <Object?>[
    id,
    name,
    origin,
    description,
    lifeSpan,
    imageUrl,
    intelligence,
    adaptability,
  ];
}
