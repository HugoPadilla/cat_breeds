import 'package:cat_breeds/features/cat_breeds/presentation/widgets/search_bar_molecule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/pump_app.dart';

void main() {
  group('SearchBarMolecule', () {
    testWidgets('renders correct hint text', (WidgetTester tester) async {
      await tester.pumpAppWithScaffold(SearchBarMolecule(onChanged: (_) {}));

      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('calls onChanged when text changes', (
      WidgetTester tester,
    ) async {
      String? value;
      await tester.pumpAppWithScaffold(
        SearchBarMolecule(onChanged: (String v) => value = v),
      );

      await tester.enterText(find.byType(TextField), 'Siberian');
      expect(value, equals('Siberian'));
    });

    testWidgets('renders custom hint text if provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpAppWithScaffold(
        SearchBarMolecule(onChanged: (_) {}, hintText: 'Custom Hint'),
      );

      expect(find.text('Custom Hint'), findsOneWidget);
    });
  });
}
