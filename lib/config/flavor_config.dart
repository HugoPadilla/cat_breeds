abstract class FlavorConfig {
  String get baseUrl;
}

class DevFlavorConfig implements FlavorConfig {
  @override
  String get baseUrl => 'https://api.thecatapi.com/v1'; // Dev endpoint
}

class PreFlavorConfig implements FlavorConfig {
  @override
  String get baseUrl => 'https://api.thecatapi.com/v1'; // Pre-production endpoint
}

class ProdFlavorConfig implements FlavorConfig {
  @override
  String get baseUrl => 'https://api.thecatapi.com/v1'; // Production endpoint
}
