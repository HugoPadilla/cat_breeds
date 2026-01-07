import 'package:cat_breeds/features/cat_breeds/presentation/widgets/adaptive_retry_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/pump_app.dart';

void main() {
  group('AdaptiveRetryWidget', () {
    testWidgets('renders message', (WidgetTester tester) async {
      await tester.pumpApp(
        AdaptiveRetryWidget(message: 'Something went wrong', onRetry: () {}),
      );

      expect(find.text('Something went wrong'), findsOneWidget);
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
    });

    testWidgets('calls onRetry when button is tapped', (
      WidgetTester tester,
    ) async {
      bool retried = false;
      await tester.pumpApp(
        AdaptiveRetryWidget(message: 'Error', onRetry: () => retried = true),
      );

      // Find any button (FilledButton on Android/Default)
      await tester.tap(find.byType(FilledButton));
      expect(retried, isTrue);
    });
  });
}
