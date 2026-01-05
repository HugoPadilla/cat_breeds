import 'package:cat_breeds/app/app.dart';
import 'package:cat_breeds/di/dependency_injector.dart';
import 'package:flutter/material.dart';

void mainApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}
