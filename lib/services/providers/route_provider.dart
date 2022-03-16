import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/router.gr.dart';

class RouteProvider extends ChangeNotifier {
  PageRouteInfo _pageRouteInfo = const HomeRoute();

  void change(PageRouteInfo routeInfo) {
    if (_pageRouteInfo != routeInfo) {
      _pageRouteInfo = routeInfo;
      notifyListeners();
    }
  }

  PageRouteInfo get pageRouteInfo => _pageRouteInfo;
}
