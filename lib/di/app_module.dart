import 'package:cat_breeds/core/database/app_database.dart';
import 'package:cat_breeds/core/database/database_connection_factory.dart';
import 'package:cat_breeds/core/database/database_key_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  @lazySingleton
  AppDatabase appDatabase(
    DatabaseKeyService keyService,
    DatabaseConnectionFactory connectionFactory,
  ) {
    return AppDatabase(connectionFactory.createConnection(keyService));
  }
}
