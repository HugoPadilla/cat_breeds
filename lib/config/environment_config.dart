import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'flavor_config.dart';
import 'flavor_enum.dart';

abstract class EnvironmentConfig {
  static late final FlavorEnum flavor;

  static late final FlavorConfig _configStrategy;

  static Future<void> initialize({required FlavorEnum flavor}) async {
    EnvironmentConfig.flavor = flavor;
    await dotenv.load(fileName: '.env');
    _setStrategy(flavor);
  }

  static void _setStrategy(FlavorEnum flavor) {
    switch (flavor) {
      case FlavorEnum.dev:
        _configStrategy = DevFlavorConfig();
        break;
      case FlavorEnum.pre:
        _configStrategy = PreFlavorConfig();
        break;
      case FlavorEnum.prod:
        _configStrategy = ProdFlavorConfig();
        break;
    }
  }

  static FlavorEnum get currentFlavor => flavor;

  static bool get isDev => flavor == FlavorEnum.dev;

  static bool get isPre => flavor == FlavorEnum.pre;

  static bool get isProd => flavor == FlavorEnum.prod;

  static String get baseUrl => _configStrategy.baseUrl;

  static String get apiKey => dotenv.get('THE_CAT_API_KEY');
}
