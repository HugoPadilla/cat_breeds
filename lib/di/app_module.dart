import 'dart:io';

import 'package:cat_breeds/core/database/app_database.dart';
import 'package:cat_breeds/core/database/database_key_service.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlcipher_flutter_libs/sqlcipher_flutter_libs.dart';
import 'package:sqlite3/open.dart';
import 'package:sqlite3/sqlite3.dart';

@module
abstract class AppModule {
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  @lazySingleton
  AppDatabase appDatabase(DatabaseKeyService keyService) {
    return AppDatabase(_openConnection(keyService));
  }

  QueryExecutor _openConnection(DatabaseKeyService keyService) {
    return LazyDatabase(() async {
      final Directory dbFolder = await getApplicationDocumentsDirectory();
      final File file = File(p.join(dbFolder.path, 'cat_breeds_v1.sqlite'));
      final String encryptionKey = await keyService.getDatabaseKey();

      return NativeDatabase.createInBackground(
        file,
        isolateSetup: () async {
          open.overrideFor(OperatingSystem.android, openCipherOnAndroid);
        },
        setup: (Database db) {
          // Check that we're actually running with SQLCipher by querying the
          // cipher_version pragma.
          final ResultSet result = db.select('pragma cipher_version');
          if (result.isEmpty) {
            throw UnsupportedError(
              'This database needs to run with SQLCipher, but that library is '
              'not available!',
            );
          }

          if (encryptionKey.isNotEmpty) {
            final String escapedKey = encryptionKey.replaceAll("'", "''");
            db.execute("pragma key = '$escapedKey'");
          }

          // Test that the key is correct by selecting from a table
          db.execute('select count(*) from sqlite_master');
        },
      );
    });
  }
}
