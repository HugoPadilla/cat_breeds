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
      childFriendly: 5,
      dogFriendly: 5,
      energyLevel: 5,
      grooming: 3,
      healthIssues: 1,
      socialNeeds: 5,
      strangerFriendly: 5,
      vocalisation: 1,
    );

    testWidgets('renders all breed details correctly', (
      WidgetTester tester,
    ) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(BreedDetailPage(breed: catBreed));
      });

      expect(find.text('Abyssinian'), findsOneWidget);

      expect(find.byType(CatImage), findsOneWidget);

      expect(find.text(catBreed.description), findsOneWidget);

      expect(find.text('Egypt'), findsOneWidget);

      expect(find.text('5 / 5'), findsNWidgets(2));
    });

    testWidgets('scrolls when content is long', (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(BreedDetailPage(breed: catBreed));
      });

      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });
  });
}
