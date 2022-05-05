import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'router/index.dart';
import 'style/index.dart';

bool get _platformIsSupported {
  final unsupportedPlatforms = [TargetPlatform.windows, TargetPlatform.macOS];
  return !kIsWeb && !unsupportedPlatforms.contains(defaultTargetPlatform);
}

Future<void> _initializeFirebase() async {
  if (_platformIsSupported) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // TODO: Remove this during release
    await FirebaseAuth.instance.useAuthEmulator("localhost", 9099);
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeFirebase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bon Appétit',
      theme: BonAppetitThemeFutura.theme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
