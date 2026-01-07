// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Página principal de Flutter Demo';

  @override
  String get catBreedsTitle => 'Razas de Gatos';

  @override
  String get searchHint => 'Buscar...';

  @override
  String get noBreedsFound => 'No se encontraron razas.';

  @override
  String get retry => 'Reintentar';

  @override
  String get more => 'Más...';

  @override
  String get origin => 'Origen';

  @override
  String get intelligence => 'Inteligencia';

  @override
  String get description => 'Descripción';

  @override
  String get details => 'Detalles';

  @override
  String get lifeSpan => 'Esperanza de vida';

  @override
  String get years => 'años';

  @override
  String get adaptability => 'Adaptabilidad';

  @override
  String originWithValue(String origin) {
    return 'Origen: $origin';
  }

  @override
  String intelligenceWithValue(int level) {
    return 'Inteligencia: $level';
  }

  @override
  String ratingOutOfFive(int rating) {
    return '$rating / 5';
  }
}
