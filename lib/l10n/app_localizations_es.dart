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

  @override
  String get temperament => 'Temperamento';

  @override
  String get affectionLevel => 'Nivel de Afecto';

  @override
  String get childFriendly => 'Amigable con Niños';

  @override
  String get dogFriendly => 'Amigable con Perros';

  @override
  String get energyLevel => 'Nivel de Energía';

  @override
  String get grooming => 'Aseo';

  @override
  String get healthIssues => 'Problemas de Salud';

  @override
  String get sheddingLevel => 'Nivel de Muda';

  @override
  String get socialNeeds => 'Necesidades Sociales';

  @override
  String get strangerFriendly => 'Amigable con Extraños';

  @override
  String get vocalisation => 'Vocalización';

  @override
  String get experimental => 'Experimental';

  @override
  String get hairless => 'Sin Pelo';

  @override
  String get natural => 'Natural';

  @override
  String get rare => 'Raro';

  @override
  String get rex => 'Rex';

  @override
  String get suppressedTail => 'Cola Suprimida';

  @override
  String get shortLegs => 'Patas Cortas';

  @override
  String get hypoallergenic => 'Hipoalergénico';

  @override
  String get wikipedia => 'Wikipedia';

  @override
  String get characteristics => 'Características';
}
