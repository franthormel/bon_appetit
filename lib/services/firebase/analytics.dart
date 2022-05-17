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
}
