import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Flutter Demo Home Page'**
  String get appTitle;

  /// No description provided for @catBreedsTitle.
  ///
  /// In en, this message translates to:
  /// **'Cat Breeds'**
  String get catBreedsTitle;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get searchHint;

  /// No description provided for @noBreedsFound.
  ///
  /// In en, this message translates to:
  /// **'No breeds found.'**
  String get noBreedsFound;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More...'**
  String get more;

  /// No description provided for @origin.
  ///
  /// In en, this message translates to:
  /// **'Origin'**
  String get origin;

  /// No description provided for @intelligence.
  ///
  /// In en, this message translates to:
  /// **'Intelligence'**
  String get intelligence;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @lifeSpan.
  ///
  /// In en, this message translates to:
  /// **'Life Span'**
  String get lifeSpan;

  /// No description provided for @years.
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get years;

  /// No description provided for @adaptability.
  ///
  /// In en, this message translates to:
  /// **'Adaptability'**
  String get adaptability;

  /// No description provided for @originWithValue.
  ///
  /// In en, this message translates to:
  /// **'Origin: {origin}'**
  String originWithValue(String origin);

  /// No description provided for @intelligenceWithValue.
  ///
  /// In en, this message translates to:
  /// **'Intelligence: {level}'**
  String intelligenceWithValue(int level);

  /// No description provided for @ratingOutOfFive.
  ///
  /// In en, this message translates to:
  /// **'{rating} / 5'**
  String ratingOutOfFive(int rating);

  /// No description provided for @temperament.
  ///
  /// In en, this message translates to:
  /// **'Temperament'**
  String get temperament;

  /// No description provided for @affectionLevel.
  ///
  /// In en, this message translates to:
  /// **'Affection Level'**
  String get affectionLevel;

  /// No description provided for @childFriendly.
  ///
  /// In en, this message translates to:
  /// **'Child Friendly'**
  String get childFriendly;

  /// No description provided for @dogFriendly.
  ///
  /// In en, this message translates to:
  /// **'Dog Friendly'**
  String get dogFriendly;

  /// No description provided for @energyLevel.
  ///
  /// In en, this message translates to:
  /// **'Energy Level'**
  String get energyLevel;

  /// No description provided for @grooming.
  ///
  /// In en, this message translates to:
  /// **'Grooming'**
  String get grooming;

  /// No description provided for @healthIssues.
  ///
  /// In en, this message translates to:
  /// **'Health Issues'**
  String get healthIssues;

  /// No description provided for @sheddingLevel.
  ///
  /// In en, this message translates to:
  /// **'Shedding Level'**
  String get sheddingLevel;

  /// No description provided for @socialNeeds.
  ///
  /// In en, this message translates to:
  /// **'Social Needs'**
  String get socialNeeds;

  /// No description provided for @strangerFriendly.
  ///
  /// In en, this message translates to:
  /// **'Stranger Friendly'**
  String get strangerFriendly;

  /// No description provided for @vocalisation.
  ///
  /// In en, this message translates to:
  /// **'Vocalisation'**
  String get vocalisation;

  /// No description provided for @experimental.
  ///
  /// In en, this message translates to:
  /// **'Experimental'**
  String get experimental;

  /// No description provided for @hairless.
  ///
  /// In en, this message translates to:
  /// **'Hairless'**
  String get hairless;

  /// No description provided for @natural.
  ///
  /// In en, this message translates to:
  /// **'Natural'**
  String get natural;

  /// No description provided for @rare.
  ///
  /// In en, this message translates to:
  /// **'Rare'**
  String get rare;

  /// No description provided for @rex.
  ///
  /// In en, this message translates to:
  /// **'Rex'**
  String get rex;

  /// No description provided for @suppressedTail.
  ///
  /// In en, this message translates to:
  /// **'Suppressed Tail'**
  String get suppressedTail;

  /// No description provided for @shortLegs.
  ///
  /// In en, this message translates to:
  /// **'Short Legs'**
  String get shortLegs;

  /// No description provided for @hypoallergenic.
  ///
  /// In en, this message translates to:
  /// **'Hypoallergenic'**
  String get hypoallergenic;

  /// No description provided for @wikipedia.
  ///
  /// In en, this message translates to:
  /// **'Wikipedia'**
  String get wikipedia;

  /// No description provided for @characteristics.
  ///
  /// In en, this message translates to:
  /// **'Characteristics'**
  String get characteristics;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
