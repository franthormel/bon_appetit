import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'router.gr.dart';

class RouteProvider extends ChangeNotifier {
  List<PageRouteInfo> _pageRoutes = [const HomeRoute()];

  void goToHomepage() {
    _pageRoutes = [const HomeRoute()];
    notifyListeners();
  }

  void pop() {
    if (_pageRoutes.length > 1) {
      _pageRoutes.removeLast();
      notifyListeners();
    }
  }

  void push(PageRouteInfo route) {
    _pageRoutes.add(route);
    notifyListeners();
  }

  List<PageRouteInfo> get pageRoutes => _pageRoutes;
}
