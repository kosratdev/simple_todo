import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Extension on `DotEnv` to provide getters for environment keys.
extension EnvKey on DotEnv {
  String get baseUrl => get('BASE_URL', fallback: 'https://example.com');
}
