// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flutter Demo Home Page';

  @override
  String get catBreedsTitle => 'Cat Breeds';

  @override
  String get searchHint => 'Search...';

  @override
  String get noBreedsFound => 'No breeds found.';

  @override
  String get retry => 'Retry';

  @override
  String get more => 'More...';

  @override
  String get origin => 'Origin';

  @override
  String get intelligence => 'Intelligence';

  @override
  String get description => 'Description';

  @override
  String get details => 'Details';

  @override
  String get lifeSpan => 'Life Span';

  @override
  String get years => 'years';

  @override
  String get adaptability => 'Adaptability';

  @override
  String originWithValue(String origin) {
    return 'Origin: $origin';
  }

  @override
  String intelligenceWithValue(int level) {
    return 'Intelligence: $level';
  }

  @override
  String ratingOutOfFive(int rating) {
    return '$rating / 5';
  }

  @override
  String get temperament => 'Temperament';

  @override
  String get affectionLevel => 'Affection Level';

  @override
  String get childFriendly => 'Child Friendly';

  @override
  String get dogFriendly => 'Dog Friendly';

  @override
  String get energyLevel => 'Energy Level';

  @override
  String get grooming => 'Grooming';

  @override
  String get healthIssues => 'Health Issues';

  @override
  String get sheddingLevel => 'Shedding Level';

  @override
  String get socialNeeds => 'Social Needs';

  @override
  String get strangerFriendly => 'Stranger Friendly';

  @override
  String get vocalisation => 'Vocalisation';

  @override
  String get experimental => 'Experimental';

  @override
  String get hairless => 'Hairless';

  @override
  String get natural => 'Natural';

  @override
  String get rare => 'Rare';

  @override
  String get rex => 'Rex';

  @override
  String get suppressedTail => 'Suppressed Tail';

  @override
  String get shortLegs => 'Short Legs';

  @override
  String get hypoallergenic => 'Hypoallergenic';

  @override
  String get wikipedia => 'Wikipedia';

  @override
  String get characteristics => 'Characteristics';
}
