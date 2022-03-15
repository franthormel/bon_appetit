import 'package:auto_route/auto_route.dart';

class DrawerRoute {
  final String text;

  // TODO Make this property required (its optional for now so we can see it in the Drawer widget)
  final PageRouteInfo? pageRouteInfo;

  DrawerRoute(this.text, {this.pageRouteInfo});
}
