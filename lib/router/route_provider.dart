import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../services/index.dart';
import 'router.gr.dart';

class RouteProvider extends ChangeNotifier {
  List<PageRouteInfo> _pageRoutes = [const HomeRoute()];

  void goToHomepage() {
    const route = HomeRoute();

    _pageRoutes = [route];
    notifyListeners();
    FirebaseAnalyticsService.trackScreen(route);
  }

  void pop() {
    if (_pageRoutes.length > 1) {
      _pageRoutes.removeLast();
      notifyListeners();
      FirebaseAnalyticsService.trackScreen(_pageRoutes.last);
    }
  }

  void push(PageRouteInfo route) {
    _pageRoutes.add(route);
    notifyListeners();
    FirebaseAnalyticsService.trackScreen(route);
  }

  List<PageRouteInfo> get pageRoutes => _pageRoutes;
}
