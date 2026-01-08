import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/di/dependency_injector.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/domain/usecases/get_cat_breeds_use_case.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/providers/breeds_provider.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/providers/state/breeds_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetCatBreedsUseCase extends Mock implements GetCatBreedsUseCase {}

void main() {
  late MockGetCatBreedsUseCase mockUseCase;
  late ProviderContainer container;

  setUp(() {
    mockUseCase = MockGetCatBreedsUseCase();

    // Register mock in GetIt
    if (getIt.isRegistered<GetCatBreedsUseCase>()) {
      getIt.unregister<GetCatBreedsUseCase>();
    }
    getIt.registerSingleton<GetCatBreedsUseCase>(mockUseCase);

    container = ProviderContainer();
    addTearDown(container.dispose);
  });

  tearDown(() {
    getIt.reset();
  });

  group('BreedsNotifier', () {
    final tBreeds = [
      CatBreed(
        id: 'abys',
        name: 'Abyssinian',
        origin: 'Egypt',
        description: 'Description',
        lifeSpan: '14 - 15',
        adaptability: 5,
        affectionLevel: 5,
        childFriendly: 3,
        dogFriendly: 4,
        energyLevel: 5,
        grooming: 1,
        healthIssues: 2,
        intelligence: 5,
        socialNeeds: 5,
        strangerFriendly: 5,
        vocalisation: 1,
      ),
    ];

    test('build should return initial state and trigger getBreeds', () async {
      // arrange
      when(
        () => mockUseCase.execute(page: 0, limit: 10),
      ).thenAnswer((_) async => Right(tBreeds));

      // act
      final subscription = container.listen(breedsProvider, (_, __) {});

      // verify initial state
      expect(subscription.read(), const BreedsState());

      // wait for microtask to complete
      await Future<void>.delayed(Duration.zero);
      await container.pump();

      // verify success state
      final state = subscription.read();
      expect(state.status, BreedsStatus.success);
      expect(state.breeds, tBreeds);
      verify(() => mockUseCase.execute(page: 0, limit: 10)).called(1);
    });

    test('should update state to error when getBreeds fails', () async {
      // arrange
      when(
        () => mockUseCase.execute(page: 0, limit: 10),
      ).thenAnswer((_) async => Left(ServerFailure('Error')));

      // act
      final subscription = container.listen(breedsProvider, (_, __) {});

      await Future<void>.delayed(Duration.zero);
      await container.pump();

      // assert
      final state = subscription.read();
      expect(state.status, BreedsStatus.error);
      expect(state.errorMessage, 'Something went wrong. Please try again.');
    });

    test('getBreeds (pagination) should append new breeds', () async {
      // arrange - initial load
      final fullPageBreeds = List.generate(10, (_) => tBreeds.first);
      when(
        () => mockUseCase.execute(page: 0, limit: 10),
      ).thenAnswer((_) async => Right(fullPageBreeds));
      when(
        () => mockUseCase.execute(page: 1, limit: 10),
      ).thenAnswer((_) async => Right(tBreeds));

      // act
      final subscription = container.listen(breedsProvider, (_, __) {});
      final notifier = container.read(breedsProvider.notifier);

      // Wait for initial load
      await Future<void>.delayed(Duration.zero);
      await container.pump();

      // Trigger load more
      await notifier.getBreeds();

      // assert
      final state = container.read(breedsProvider);
      expect(state.breeds.length, 11);
      expect(state.page, 2);
      verify(() => mockUseCase.execute(page: 1, limit: 10)).called(1);
      subscription.close();
    });

    test('onSearchChanged should update searchQuery', () {
      when(
        () => mockUseCase.execute(page: 0, limit: 10),
      ).thenAnswer((_) async => Right(tBreeds));

      final subscription = container.listen(breedsProvider, (_, __) {});
      final notifier = container.read(breedsProvider.notifier);

      notifier.onSearchChanged('cat');

      expect(container.read(breedsProvider).searchQuery, 'cat');
      subscription.close();
    });
  });
}
