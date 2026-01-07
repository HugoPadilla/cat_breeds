import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/cat_image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../helpers/pump_app.dart';

void main() {
  group('CatImage', () {
    testWidgets('renders CachedNetworkImage', (tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpApp(
          const CatImage(imageUrl: 'https://example.com/cat.jpg'),
        );
      });

      expect(find.byType(CachedNetworkImage), findsOneWidget);
    });
  });
}
