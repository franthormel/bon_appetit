import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticsService {
  static Future<void> trackScreen(PageRouteInfo route) async {
    await FirebaseAnalytics.instance.logEvent(
      name: 'screen_view',
      parameters: {
        'screen_name': route.routeName,
      },
    );
  }

  static Future<void> logLoginViaSignIn() async {
    await _logLogin("Password");
  }

  static Future<void> logLoginViaGoogle() async {
    await _logLogin("Google OAuth");
  }

  static Future<void> _logLogin(String value) async {
    await FirebaseAnalytics.instance.logLogin(loginMethod: value);
  }
}
