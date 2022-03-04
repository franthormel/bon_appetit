import 'package:auto_route/auto_route.dart';

class DrawerRoute {
  final String text;
  final PageRouteInfo?
      pageRouteInfo; // TODO Make this property required (its optional for now so we can see it in the Drawer widget)

  DrawerRoute({required this.text, this.pageRouteInfo});
}
