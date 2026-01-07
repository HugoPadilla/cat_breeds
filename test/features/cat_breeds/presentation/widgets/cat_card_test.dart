import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/cat_card.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/cat_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../helpers/pump_app.dart';

void main() {
  group('CatCard', () {
    final CatBreed catBreed = const CatBreed(
      id: 'abys',
      name: 'Abyssinian',
      description: 'Description',
      origin: 'Egypt',
      lifeSpan: '14 - 15',
      intelligence: 5,
      adaptability: 5,
      imageUrl: 'https://example.com/abys.jpg',
    );

    testWidgets('renders correctly', (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(CatCard(breed: catBreed, onTap: () {}));
      });

      expect(find.text('Abyssinian'), findsOneWidget);
      expect(find.textContaining('Egypt'), findsOneWidget);
      expect(find.byType(CatImage), findsOneWidget);
    });

    testWidgets('calls onTap when tapped', (WidgetTester tester) async {
      bool tapped = false;
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(
          CatCard(breed: catBreed, onTap: () => tapped = true),
        );
      });

      await tester.tap(find.byType(InkWell));
      expect(tapped, isTrue);
    });
  });
}
