import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:simple_todo/utils/flavor_env.dart';

import 'app.dart';
import 'utils/flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  // initialize .env file
  await dotenv.loadFlavor(appFlavor);

  runApp(const App());
}
