import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/screens/breed_detail_page.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/cat_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../helpers/pump_app.dart';

void main() {
  group('BreedDetailPage', () {
    final CatBreed catBreed = const CatBreed(
      id: 'abys',
      name: 'Abyssinian',
      description:
          'The Abyssinian is easy to care for, and a joy to have in your home.',
      origin: 'Egypt',
      lifeSpan: '14 - 15',
      intelligence: 5,
      adaptability: 5,
      imageUrl: 'https://example.com/abys.jpg',
      affectionLevel: 5,
      childFriendly: 4,
      dogFriendly: 5,
      energyLevel: 5,
      grooming: 3,
      healthIssues: 1,
      socialNeeds: 5,
      strangerFriendly: 5,
      vocalisation: 1,
      temperament: 'Active, Energetic, Independent',
      experimental: 0,
      hairless: 0,
      natural: 1,
      rare: 0,
      rex: 0,
      suppressedTail: 0,
      shortLegs: 0,
      hypoallergenic: 0,
      wikipediaUrl: 'https://en.wikipedia.org/wiki/Abyssinian_(cat)',
      sheddingLevel: 3,
    );

    testWidgets('renders principal info correctly', (
      WidgetTester tester,
    ) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(BreedDetailPage(breed: catBreed));
      });

      expect(find.text('Abyssinian'), findsOneWidget);
      expect(find.byType(CatImage), findsOneWidget);
      expect(
        find.text(
          'The Abyssinian is easy to care for, and a joy to have in your home.',
        ),
        findsOneWidget,
      );
      expect(find.text('Egypt'), findsOneWidget);
    });

    testWidgets('renders temperament chips', (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(BreedDetailPage(breed: catBreed));
      });

      expect(find.text('Active'), findsOneWidget);
      expect(find.text('Energetic'), findsOneWidget);
      expect(find.text('Independent'), findsOneWidget);
    });

    testWidgets('renders characteristics chips', (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(BreedDetailPage(breed: catBreed));
      });

      // The breed has natural: 1. We expect the localized String 'Natural'.
      // In tests using pumpApp, we rely on the English locale by default.
      expect(find.text('Natural'), findsOneWidget);

      // Ensure other chips are NOT found (values are 0)
      expect(find.text('Hairless'), findsNothing);
      expect(find.text('Experimental'), findsNothing);
      expect(find.text('Rare'), findsNothing);
      expect(find.text('Rex'), findsNothing);
      expect(find.text('Suppressed Tail'), findsNothing);
      expect(find.text('Short Legs'), findsNothing);
      expect(find.text('Hypoallergenic'), findsNothing);
    });

    testWidgets('renders ratings correctly', (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(BreedDetailPage(breed: catBreed));
      });

      expect(find.text('Adaptability'), findsOneWidget);
      expect(find.text('Affection Level'), findsOneWidget);
      expect(find.text('Child Friendly'), findsOneWidget);
      expect(find.text('Dog Friendly'), findsOneWidget);
      expect(find.text('Energy Level'), findsOneWidget);
      expect(find.text('Grooming'), findsOneWidget);
      expect(find.text('Health Issues'), findsOneWidget);
      expect(find.text('Intelligence'), findsOneWidget);
      expect(find.text('Shedding Level'), findsOneWidget);
      expect(find.text('Social Needs'), findsOneWidget);
      expect(find.text('Stranger Friendly'), findsOneWidget);
      expect(find.text('Vocalisation'), findsOneWidget);

      expect(find.byIcon(Icons.star), findsNWidgets(47));
      expect(find.byIcon(Icons.star_border), findsNWidgets(13));
    });

    testWidgets('renders wikipedia button', (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(BreedDetailPage(breed: catBreed));
      });

      expect(find.byIcon(Icons.public), findsOneWidget);
      expect(find.text('Wikipedia'), findsOneWidget);
    });

    testWidgets('scrolls when content is long', (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(BreedDetailPage(breed: catBreed));
      });

      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });
  });
}
