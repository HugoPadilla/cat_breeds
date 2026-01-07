import 'package:cat_breeds/core/database/app_database.dart';
import 'package:cat_breeds/di/dependency_injector.dart';
import 'package:injectable/injectable.dart';

abstract class DriftDatabaseManager {
  Future<AppDatabase> getDatabase();

  Future<void> restartDatabase();
}

@LazySingleton(as: DriftDatabaseManager)
class DriftDatabaseManagerImpl implements DriftDatabaseManager {
  @override
  Future<AppDatabase> getDatabase() async {
    return getIt<AppDatabase>();
  }

  @override
  Future<void> restartDatabase() async {
    if (getIt.isRegistered<AppDatabase>()) {
      await getIt.resetLazySingleton<AppDatabase>();
    }
  }
}
