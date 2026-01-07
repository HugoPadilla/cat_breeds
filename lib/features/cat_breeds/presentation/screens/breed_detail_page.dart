import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
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
            child: CatImage(
              imageUrl: breed.imageUrl ?? '',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 24),

                    _SectionTitle(title: l10n.description),
                    const SizedBox(height: 8),
                    Text(
                      breed.description,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        height: 1.5,
                        color: Colors.grey[800],
                      ),
                    ),

                    const SizedBox(height: 24),

                    _SectionTitle(title: l10n.details),
                    const SizedBox(height: 16),
                    _DetailRow(label: l10n.origin, value: breed.origin),
                    const Divider(),
                    _DetailRow(
                      label: l10n.lifeSpan,
                      value: '${breed.lifeSpan} ${l10n.years}',
                    ),
                    const Divider(),
                    _DetailRow(
                      label: l10n.intelligence,
                      value: l10n.ratingOutOfFive(breed.intelligence),
                    ),
                    const Divider(),
                    _DetailRow(
                      label: l10n.adaptability,
                      value: l10n.ratingOutOfFive(breed.adaptability),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).padding.bottom + 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
