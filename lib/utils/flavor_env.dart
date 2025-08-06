import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Extension on the `DotEnv` class to provide additional functionality
/// specific to handling environment variables for different flavors of
/// the application.
extension FlavorEnv on DotEnv {
  /// Loads the specified [appFlavor] configuration asynchronously.
  Future<void> loadFlavor(String? appFlavor) async {
    switch (appFlavor) {
      case 'dev':
        await load(fileName: '.env.dev');
        break;
      case 'prod':
        await load();
        break;
      default:
        throw Exception('Unknown flavor');
    }
  }
}
