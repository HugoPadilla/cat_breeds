import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/cat_image.dart';
import 'package:cat_breeds/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  final CatBreed breed;
  final VoidCallback onTap;

  const CatCard({super.key, required this.breed, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    breed.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    l10n.more, // Or use an icon
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: CatImage(
                imageUrl: breed.imageUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(l10n.originWithValue(breed.origin)),
                  Text(l10n.intelligenceWithValue(breed.intelligence)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
