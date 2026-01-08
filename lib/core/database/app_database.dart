import 'package:drift/drift.dart';

import 'daos/cat_breeds_dao.dart';
import 'tables/cat_breeds_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: <Type>[CatBreedsTable], daos: [CatBreedsDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
