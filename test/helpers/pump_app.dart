import 'package:cat_breeds/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    ProviderContainer? container,
    List<Override> overrides = const <Override>[],
  }) async {
    await pumpWidget(
      UncontrolledProviderScope(
        container: container ?? ProviderContainer(overrides: overrides),
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: widget,
        ),
      ),
    );
  }

  Future<void> pumpAppWithScaffold(
    Widget widget, {
    ProviderContainer? container,
    List<Override> overrides = const <Override>[],
  }) async {
    await pumpWidget(
      UncontrolledProviderScope(
        container: container ?? ProviderContainer(overrides: overrides),
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(body: widget),
        ),
      ),
    );
  }
}
