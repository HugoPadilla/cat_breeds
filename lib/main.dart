import 'package:cat_breeds/app/app.dart';
import 'package:cat_breeds/di/dependency_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sqlcipher_flutter_libs/sqlcipher_flutter_libs.dart';
import 'package:sqlite3/open.dart';

void mainApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // This method must be called before using database drift
  await applyWorkaroundToOpenSqlCipherOnOldAndroidVersions();
  open.overrideFor(OperatingSystem.android, openCipherOnAndroid);

  await configureDependencies();
  runApp(const ProviderScope(child: MyApp()));
}
