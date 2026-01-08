import 'config/environment_config.dart';
import 'config/flavor_enum.dart';
import 'main.dart';

Future<void> main() async {
  await EnvironmentConfig.initialize(flavor: FlavorEnum.prod);
  mainApp();
}
