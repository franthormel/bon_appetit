import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

import 'router/index.dart';
import 'services/index.dart';
import 'style/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseAuthService.initializeFirebase();
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
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () =>
            [FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
