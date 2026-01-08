import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/breed_detail/detail_row.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/breed_detail/feature_chip.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/breed_detail/rating_row.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/breed_detail/section_title.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/breed_detail/wikipedia_button.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/cat_image.dart';
import 'package:cat_breeds/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class BreedDetailPage extends StatelessWidget {
  final CatBreed breed;

  const BreedDetailPage({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          breed.name,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: CatImage(
              imageUrl: breed.imageUrl ?? '',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SectionTitle(title: l10n.description),
                  const SizedBox(height: 8),
                  Text(
                    breed.description,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      height: 1.5,
                      color: Colors.grey[800],
                    ),
                  ),

                  const SizedBox(height: 24),

                  if (breed.temperament != null) ...[
                    SectionTitle(title: l10n.temperament),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: breed.temperament!
                          .split(',')
                          .map((t) => Chip(label: Text(t.trim())))
                          .toList(),
                    ),
                    const SizedBox(height: 24),
                  ],

                  SectionTitle(title: l10n.details),
                  const SizedBox(height: 16),
                  DetailRow(label: l10n.origin, value: breed.origin),
                  const Divider(),
                  DetailRow(
                    label: l10n.lifeSpan,
                    value: '${breed.lifeSpan} ${l10n.years}',
                  ),

                  const SizedBox(height: 24),
                  SectionTitle(title: l10n.characteristics),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    children: [
                      if (breed.experimental == 1)
                        FeatureChip(label: l10n.experimental),
                      if (breed.hairless == 1)
                        FeatureChip(label: l10n.hairless),
                      if (breed.natural == 1) FeatureChip(label: l10n.natural),
                      if (breed.rare == 1) FeatureChip(label: l10n.rare),
                      if (breed.rex == 1) FeatureChip(label: l10n.rex),
                      if (breed.suppressedTail == 1)
                        FeatureChip(label: l10n.suppressedTail),
                      if (breed.shortLegs == 1)
                        FeatureChip(label: l10n.shortLegs),
                      if (breed.hypoallergenic == 1)
                        FeatureChip(label: l10n.hypoallergenic),
                    ],
                  ),

                  const SizedBox(height: 24),
                  SectionTitle(title: 'Ratings'),
                  const SizedBox(height: 16),
                  RatingRow(
                    label: l10n.adaptability,
                    rating: breed.adaptability,
                  ),
                  RatingRow(
                    label: l10n.affectionLevel,
                    rating: breed.affectionLevel,
                  ),
                  RatingRow(
                    label: l10n.childFriendly,
                    rating: breed.childFriendly,
                  ),
                  RatingRow(label: l10n.dogFriendly, rating: breed.dogFriendly),
                  RatingRow(label: l10n.energyLevel, rating: breed.energyLevel),
                  RatingRow(label: l10n.grooming, rating: breed.grooming),
                  RatingRow(
                    label: l10n.healthIssues,
                    rating: breed.healthIssues,
                  ),
                  RatingRow(
                    label: l10n.intelligence,
                    rating: breed.intelligence,
                  ),
                  if (breed.sheddingLevel != null)
                    RatingRow(
                      label: l10n.sheddingLevel,
                      rating: breed.sheddingLevel!,
                    ),
                  RatingRow(label: l10n.socialNeeds, rating: breed.socialNeeds),
                  RatingRow(
                    label: l10n.strangerFriendly,
                    rating: breed.strangerFriendly,
                  ),
                  RatingRow(
                    label: l10n.vocalisation,
                    rating: breed.vocalisation,
                  ),

                  if (breed.wikipediaUrl != null &&
                      breed.wikipediaUrl!.isNotEmpty) ...[
                    const SizedBox(height: 32),
                    WikipediaButton(
                      url: breed.wikipediaUrl!,
                      label: l10n.wikipedia,
                    ),
                  ],

                  SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
