import 'package:drift/drift.dart';

part 'app_database.g.dart';

class CatBreedsTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  TextColumn get temperament => text().nullable()();

  TextColumn get origin => text()();

  TextColumn get description => text()();

  TextColumn get lifeSpan => text()();

  TextColumn get imageUrl => text().nullable()();

  IntColumn get adaptability => integer()();

  IntColumn get affectionLevel => integer()();

  IntColumn get childFriendly => integer()();

  IntColumn get dogFriendly => integer()();

  IntColumn get energyLevel => integer()();

  IntColumn get grooming => integer()();

  IntColumn get healthIssues => integer()();

  IntColumn get intelligence => integer()();

  IntColumn get sheddingLevel => integer().nullable()();

  IntColumn get socialNeeds => integer()();

  IntColumn get strangerFriendly => integer()();

  IntColumn get vocalisation => integer()();

  IntColumn get experimental => integer().nullable()();

  IntColumn get hairless => integer().nullable()();

  IntColumn get natural => integer().nullable()();

  IntColumn get rare => integer().nullable()();

  IntColumn get rex => integer().nullable()();

  IntColumn get suppressedTail => integer().nullable()();

  IntColumn get shortLegs => integer().nullable()();

  TextColumn get wikipediaUrl => text().nullable()();

  IntColumn get hypoallergenic => integer().nullable()();

  TextColumn get referenceImageId => text().nullable()();

  @override
  Set<Column> get primaryKey => <Column<Object>>{id};
}

@DriftDatabase(tables: <Type>[CatBreedsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
