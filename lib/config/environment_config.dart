import 'flavor_enum.dart';

abstract class EnvironmentConfig {
  static late final FlavorEnum flavor;

  static void initialize({required FlavorEnum flavor}) {
    EnvironmentConfig.flavor = flavor;
  }

  static FlavorEnum get currentFlavor => flavor;

  static bool get isDev => flavor == FlavorEnum.dev;

  static bool get isPre => flavor == FlavorEnum.pre;

  static bool get isProd => flavor == FlavorEnum.prod;
}
