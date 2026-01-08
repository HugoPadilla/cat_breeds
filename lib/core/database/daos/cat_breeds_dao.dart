import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/cat_breeds_table.dart';

part 'cat_breeds_dao.g.dart';

@DriftAccessor(tables: [CatBreedsTable])
class CatBreedsDao extends DatabaseAccessor<AppDatabase>
    with _$CatBreedsDaoMixin {
  CatBreedsDao(super.db);

  Future<List<CatBreedsTableData>> getBreeds() => select(catBreedsTable).get();

  Stream<List<CatBreedsTableData>> watchBreeds() =>
      select(catBreedsTable).watch();

  Future<void> insertBreed(CatBreedsTableData breed) =>
      into(catBreedsTable).insert(breed, mode: InsertMode.insertOrReplace);

  Future<void> insertBreeds(List<CatBreedsTableData> breeds) async {
    await batch((batch) {
      batch.insertAll(catBreedsTable, breeds, mode: InsertMode.insertOrReplace);
    });
  }
}
