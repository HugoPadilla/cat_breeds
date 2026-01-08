import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/domain/repositories/cat_breeds_repository.dart';
import 'package:cat_breeds/features/cat_breeds/domain/usecases/get_cat_breeds_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCatBreedsRepository extends Mock implements CatBreedsRepository {}

void main() {
  late GetCatBreedsUseCase useCase;
  late MockCatBreedsRepository mockRepository;

  setUp(() {
    mockRepository = MockCatBreedsRepository();
    useCase = GetCatBreedsUseCase(mockRepository);
  });

  group('GetCatBreedsUseCase', () {
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
    final tPage = 0;
    final tLimit = 10;

    test('should return list of breeds from repository', () async {
      // arrange
      when(
        () => mockRepository.getBreeds(page: tPage, limit: tLimit),
      ).thenAnswer((_) async => Right(tBreeds));

      // act
      final result = await useCase.execute(page: tPage, limit: tLimit);

      // assert
      expect(result, Right(tBreeds));
      verify(() => mockRepository.getBreeds(page: tPage, limit: tLimit));
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return failure from repository', () async {
      // arrange
      final failure = ServerFailure('Server Error');
      when(
        () => mockRepository.getBreeds(page: tPage, limit: tLimit),
      ).thenAnswer((_) async => Left(failure));

      // act
      final result = await useCase.execute(page: tPage, limit: tLimit);

      // assert
      expect(result, Left(failure));
      verify(() => mockRepository.getBreeds(page: tPage, limit: tLimit));
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
