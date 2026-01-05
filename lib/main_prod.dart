import 'config/environment_config.dart';
import 'config/flavor_enum.dart';
import 'main.dart';

void main() {
  EnvironmentConfig.initialize(flavor: FlavorEnum.prod);
  mainApp();
}
