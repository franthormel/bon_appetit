import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'router.gr.dart';

class RouteProvider extends ChangeNotifier {
  // TODO: TEST static const _home = HomeRoute();

  List<PageRouteInfo> _pageRoutes = [const HomeRoute()];

  void change(PageRouteInfo pageRouteInfo) {
    _pageRoutes = [pageRouteInfo];
    notifyListeners();
  }

  void pop() {
    if (_pageRoutes.length > 1) {
      _pageRoutes.removeLast();
      notifyListeners();
    }
  }

  void push(PageRouteInfo pageRouteInfo) {
    _pageRoutes.add(pageRouteInfo);
    notifyListeners();
  }

  List<PageRouteInfo> get pageRouteInfo => _pageRoutes;
}
