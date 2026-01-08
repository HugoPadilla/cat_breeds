import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:cat_breeds/features/cat_breeds/data/repositories/cat_breeds_repository_impl.dart';
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_local_datasource.dart';
import 'package:cat_breeds/features/cat_breeds/domain/datasources/cat_breeds_remote_datasource.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCatBreedsRemoteDatasource extends Mock
    implements CatBreedsRemoteDatasource {}

class MockCatBreedsLocalDatasource extends Mock
    implements CatBreedsLocalDatasource {}

void main() {
  late CatBreedsRepositoryImpl repository;
  late MockCatBreedsRemoteDatasource mockRemoteDatasource;
  late MockCatBreedsLocalDatasource mockLocalDatasource;

  setUp(() {
    mockRemoteDatasource = MockCatBreedsRemoteDatasource();
    mockLocalDatasource = MockCatBreedsLocalDatasource();
    repository = CatBreedsRepositoryImpl(
      mockRemoteDatasource,
      mockLocalDatasource,
    );
  });

  group('getBreeds', () {
    final List<CatBreedDto> tCatBreedDtoList = <CatBreedDto>[
      CatBreedDto(
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
    final List<CatBreed> tCatBreedList = tCatBreedDtoList
        .map(
          (CatBreedDto e) => CatBreed(
            id: e.id,
            name: e.name,
            origin: e.origin,
            description: e.description,
            lifeSpan: e.lifeSpan,
            adaptability: e.adaptability,
            affectionLevel: e.affectionLevel,
            childFriendly: e.childFriendly,
            dogFriendly: e.dogFriendly,
            energyLevel: e.energyLevel,
            grooming: e.grooming,
            healthIssues: e.healthIssues,
            intelligence: e.intelligence,
            socialNeeds: e.socialNeeds,
            strangerFriendly: e.strangerFriendly,
            vocalisation: e.vocalisation,
            temperament: e.temperament,
            imageUrl: e.image?.url ?? '',
            sheddingLevel: e.sheddingLevel,
            experimental: e.experimental,
            hairless: e.hairless,
            natural: e.natural,
            rare: e.rare,
            rex: e.rex,
            suppressedTail: e.suppressedTail,
            shortLegs: e.shortLegs,
            wikipediaUrl: e.wikipediaUrl,
            hypoallergenic: e.hypoallergenic,
            referenceImageId: e.referenceImageId,
          ),
        )
        .toList();

    final int tPage = 0;
    final int tLimit = 10;

    test(
      'should return remote data when the call to remote datasource is successful',
      () async {
        // arrange
        when(
          () => mockRemoteDatasource.getBreeds(page: tPage, limit: tLimit),
        ).thenAnswer((_) async => Right(tCatBreedDtoList));
        when(
          () => mockLocalDatasource.saveBreeds(any()),
        ).thenAnswer((_) async {});

        // act
        final Either<ApiFailure, List<CatBreed>> result = await repository
            .getBreeds(page: tPage, limit: tLimit);

        // assert
        expect(result.isRight(), true);
        result.fold((ApiFailure l) => fail('Should not be left: $l'), (
          List<CatBreed> r,
        ) {
          expect(r.length, tCatBreedList.length);
          expect(r.first.id, tCatBreedList.first.id);
        });

        verify(
          () => mockRemoteDatasource.getBreeds(page: tPage, limit: tLimit),
        );
        verify(() => mockLocalDatasource.saveBreeds(tCatBreedDtoList));
      },
    );

    test(
      'should return local data when remote call fails and local data is present',
      () async {
        // arrange
        when(
          () => mockRemoteDatasource.getBreeds(page: tPage, limit: tLimit),
        ).thenAnswer((_) async => Left(Exception('Remote error')));
        when(
          () => mockLocalDatasource.getBreeds(page: tPage, limit: tLimit),
        ).thenAnswer((_) async => Right(tCatBreedDtoList));

        // act
        final Either<ApiFailure, List<CatBreed>> result = await repository
            .getBreeds(page: tPage, limit: tLimit);

        // assert
        expect(result.isRight(), true);
        verify(
          () => mockRemoteDatasource.getBreeds(page: tPage, limit: tLimit),
        );
        verify(() => mockLocalDatasource.getBreeds(page: tPage, limit: tLimit));
      },
    );

    test(
      'should return failure when both remote and local calls fail',
      () async {
        // arrange
        when(
          () => mockRemoteDatasource.getBreeds(page: tPage, limit: tLimit),
        ).thenAnswer((_) async => Left(Exception('Remote error')));
        when(
          () => mockLocalDatasource.getBreeds(page: tPage, limit: tLimit),
        ).thenAnswer((_) async => Left(Exception('Local error')));

        // act
        final Either<ApiFailure, List<CatBreed>> result = await repository
            .getBreeds(page: tPage, limit: tLimit);

        // assert
        expect(result.isLeft(), true);
        expect(
          result.fold((ApiFailure l) => l, (List<CatBreed> r) => null),
          isA<ServerFailure>(),
        );
      },
    );

    test(
      'should return failure when remote fails and local returns empty list',
      () async {
        // arrange
        when(
          () => mockRemoteDatasource.getBreeds(page: tPage, limit: tLimit),
        ).thenAnswer((_) async => Left(Exception('Remote error')));
        when(
          () => mockLocalDatasource.getBreeds(page: tPage, limit: tLimit),
        ).thenAnswer((_) async => Right(<CatBreedDto>[]));

        // act
        final Either<ApiFailure, List<CatBreed>> result = await repository
            .getBreeds(page: tPage, limit: tLimit);

        // assert
        expect(result.isLeft(), true);
        verify(() => mockLocalDatasource.getBreeds(page: tPage, limit: tLimit));
      },
    );
  });
}
