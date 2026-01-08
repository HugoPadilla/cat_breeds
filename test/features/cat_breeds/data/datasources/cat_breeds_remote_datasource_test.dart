import 'package:cat_breeds/core/network/api_client.dart';
import 'package:cat_breeds/features/cat_breeds/data/datasources/cat_breeds_remote_datasource_impl.dart';
import 'package:cat_breeds/features/cat_breeds/data/models/cat_breed_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  late CatBreedsRemoteDatasourceImpl datasource;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    datasource = CatBreedsRemoteDatasourceImpl(mockApiClient);
  });

  group('getBreeds', () {
    final List<Map<String, Object>> tBreedsList = <Map<String, Object>>[
      <String, Object>{
        'id': 'abys',
        'name': 'Abyssinian',
        'temperament': 'Active, Energetic, Independent, Intelligent, Gentle',
        'origin': 'Egypt',
        'description':
            'The Abyssinian is a breed of domestic short-haired cat with a distinctive "ticked" tabby coat, in which individual hairs are banded with different colors.',
        'life_span': '14 - 15',
        'adaptability': 5,
        'affection_level': 5,
        'child_friendly': 3,
        'dog_friendly': 4,
        'energy_level': 5,
        'grooming': 1,
        'health_issues': 2,
        'intelligence': 5,
        'shedding_level': 2,
        'social_needs': 5,
        'stranger_friendly': 5,
        'vocalisation': 1,
        'experimental': 0,
        'hairless': 0,
        'natural': 1,
        'rare': 0,
        'rex': 0,
        'suppressed_tail': 0,
        'short_legs': 0,
        'wikipedia_url': 'https://en.wikipedia.org/wiki/Abyssinian_(cat)',
        'hypoallergenic': 0,
        'reference_image_id': '0XYvRd7oD',
      },
    ];
    final int tLimit = 10;
    final int tPage = 0;

    test(
      'should return List<CatBreedDto> when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => mockApiClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          ),
        ).thenAnswer((_) async => tBreedsList);

        // act
        final Either<Exception, List<CatBreedDto>> result = await datasource
            .getBreeds(page: tPage, limit: tLimit);

        // assert
        expect(result.isRight(), true);
        result.fold(
          (Exception l) => fail('Should not return left'),
          (List<CatBreedDto> r) => expect(r, isA<List<CatBreedDto>>()),
        );
        verify(
          () => mockApiClient.get(
            '/breeds',
            queryParameters: <String, dynamic>{'limit': tLimit, 'page': tPage},
          ),
        ).called(1);
      },
    );

    test('should return Exception when the call to API fails', () async {
      // arrange
      when(
        () => mockApiClient.get(
          any(),
          queryParameters: any(named: 'queryParameters'),
        ),
      ).thenThrow(Exception());

      // act
      final Either<Exception, List<CatBreedDto>> result = await datasource
          .getBreeds(page: tPage, limit: tLimit);

      // assert
      expect(result.isLeft(), true);
      verify(
        () => mockApiClient.get(
          '/breeds',
          queryParameters: <String, dynamic>{'limit': tLimit, 'page': tPage},
        ),
      ).called(1);
    });
  });
}
