import 'package:cat_breeds/core/database/app_database.dart';
import 'package:cat_breeds/core/database/daos/cat_breeds_dao.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppDatabase database;
  late CatBreedsDao dao;

  setUp(() {
    database = AppDatabase(NativeDatabase.memory());
    dao = CatBreedsDao(database);
  });

  tearDown(() async {
    await database.close();
  });

  final CatBreedsTableData breed1 = CatBreedsTableData(
    id: '1',
    name: 'Abyssinian',
    origin: 'Egypt',
    description:
        'The Abyssinian is a breed of domestic short-haired cat with a distinctive "ticked" tabby coat, in which individual hairs are banded with different colors.',
    lifeSpan: '14 - 15',
    adaptability: 5,
    affectionLevel: 5,
    childFriendly: 3,
    dogFriendly: 4,
    energyLevel: 5,
    grooming: 1,
    healthIssues: 2,
    intelligence: 5,
    sheddingLevel: 1,
    socialNeeds: 5,
    strangerFriendly: 5,
    vocalisation: 1,
    rare: 0,
    experimental: 0,
    hairless: 0,
    natural: 1,
    shortLegs: 0,
    hypoallergenic: 0,
  );

  final CatBreedsTableData breed2 = CatBreedsTableData(
    id: '2',
    name: 'Aegean',
    origin: 'Greece',
    description:
        'Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding.',
    lifeSpan: '9 - 12',
    adaptability: 5,
    affectionLevel: 4,
    childFriendly: 4,
    dogFriendly: 4,
    energyLevel: 3,
    grooming: 3,
    healthIssues: 1,
    intelligence: 3,
    sheddingLevel: 3,
    socialNeeds: 4,
    strangerFriendly: 4,
    vocalisation: 3,
    rare: 0,
    experimental: 0,
    hairless: 0,
    natural: 0,
    shortLegs: 0,
    hypoallergenic: 0,
  );

  test('should return empty list when database is empty', () async {
    final List<CatBreedsTableData> breeds = await dao.getBreeds();
    expect(breeds, isEmpty);
  });

  test('should insert and retrieval a breed', () async {
    await dao.insertBreed(breed1);

    final List<CatBreedsTableData> breeds = await dao.getBreeds();
    expect(breeds, hasLength(1));
    expect(breeds.first, breed1);
  });

  test('should insert multiple breeds and retrieve them', () async {
    await dao.insertBreeds(<CatBreedsTableData>[breed1, breed2]);

    final List<CatBreedsTableData> breeds = await dao.getBreeds();
    expect(breeds, hasLength(2));
    expect(breeds, containsAll(<dynamic>[breed1, breed2]));
  });

  test('should observe breeds updates via stream', () async {
    await dao.insertBreed(breed1);

    final Stream<List<CatBreedsTableData>> stream = dao.watchBreeds();

    final Future<void> expectation = expectLater(
      stream,
      emitsInOrder(<dynamic>[hasLength(1), hasLength(2)]),
    );

    await dao.insertBreed(breed2);

    await expectation;
  });
}
