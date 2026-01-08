import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/domain/usecases/get_cat_breeds_use_case.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/screens/breed_detail_page.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/screens/breeds_page.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/adaptive_retry_widget.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/cat_card.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../helpers/pump_app.dart';

class MockGetCatBreedsUseCase extends Mock implements GetCatBreedsUseCase {}

void main() {
  late MockGetCatBreedsUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockGetCatBreedsUseCase();
    GetIt.I.registerSingleton<GetCatBreedsUseCase>(mockUseCase);
  });

  tearDown(() {
    GetIt.I.reset();
  });

  group('BreedsPage', () {
    testWidgets('renders list of CatCard when success', (
      WidgetTester tester,
    ) async {
      final CatBreed breed = const CatBreed(
        id: '1',
        name: 'Breed 1',
        description: 'Desc',
        origin: 'Origin',
        lifeSpan: '1-2',
        adaptability: 1,
        intelligence: 1,
        imageUrl: 'http://img.com',
        affectionLevel: 1,
        childFriendly: 1,
        dogFriendly: 1,
        energyLevel: 1,
        grooming: 1,
        healthIssues: 1,
        socialNeeds: 1,
        strangerFriendly: 1,
        vocalisation: 1,
      );

      when(
        () => mockUseCase.execute(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
        ),
      ).thenAnswer((_) async => Right(<CatBreed>[breed]));

      await mockNetworkImagesFor(() async {
        await tester.pumpApp(const BreedsPage());
        await tester.pump(Duration.zero);
        await tester.pump();
      });

      expect(find.byType(CatCard), findsOneWidget);
      expect(find.text('Breed 1'), findsOneWidget);
    });

    testWidgets('renders AdaptiveRetryWidget when error', (
      WidgetTester tester,
    ) async {
      when(
        () => mockUseCase.execute(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
        ),
      ).thenAnswer((_) async => Left(const ServerFailure('Error occurred')));

      await tester.pumpApp(const BreedsPage());
      await tester.pump(Duration.zero);
      await tester.pump();

      expect(find.byType(AdaptiveRetryWidget), findsOneWidget);
    });

    testWidgets('navigates to detail page on card tap', (
      WidgetTester tester,
    ) async {
      final CatBreed breed = const CatBreed(
        id: '1',
        name: 'Breed 1',
        description: 'Desc',
        origin: 'Origin',
        lifeSpan: '1-2',
        adaptability: 1,
        intelligence: 1,
        imageUrl: 'http://img.com',
        affectionLevel: 1,
        childFriendly: 1,
        dogFriendly: 1,
        energyLevel: 1,
        grooming: 1,
        healthIssues: 1,
        socialNeeds: 1,
        strangerFriendly: 1,
        vocalisation: 1,
      );

      when(
        () => mockUseCase.execute(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
        ),
      ).thenAnswer((_) async => Right(<CatBreed>[breed]));

      await mockNetworkImagesFor(() async {
        await tester.pumpApp(const BreedsPage());
        await tester.pump(Duration.zero);
        await tester.pump();

        await tester.tap(find.byType(CatCard));
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 300)); // Transition
        await tester.pump();
      });

      expect(find.byType(BreedDetailPage), findsOneWidget);
    });

    testWidgets('calls usecase again on retry', (WidgetTester tester) async {
      when(
        () => mockUseCase.execute(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
        ),
      ).thenAnswer((_) async => Left(const ServerFailure('Error occurred')));

      await tester.pumpApp(const BreedsPage());
      await tester.pump(Duration.zero);
      await tester.pump();

      expect(find.byType(AdaptiveRetryWidget), findsOneWidget);

      await tester.tap(find.text('Retry'));
      await tester.pump(Duration.zero);

      verify(
        () => mockUseCase.execute(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
        ),
      ).called(2);
    });
  });
}
