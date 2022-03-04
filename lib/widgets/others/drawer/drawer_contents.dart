import 'package:bon_appetit/models/index.dart';
import 'package:flutter/material.dart';

import 'drawer_account.dart';
import 'drawer_footer.dart';
import 'drawer_router.dart';

class DrawerContentsWidget extends StatelessWidget {
  const DrawerContentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...routerWidgets,
        const DrawerAccountWidget(),
        const DrawerFooterWidget(),
      ],
    );
  }

  List<Widget> get routerWidgets {
    final widgets = <Widget>[];

    for (final route in routes) {
      widgets.add(DrawerRouterWidget(route.text));
    }

    return widgets;
  }

  // TODO Remove null and use actual page (use blank pages for now)
  List<DrawerRoute> get routes {
    return <DrawerRoute>[
      DrawerRoute(text: "Recipes", pageRouteInfo: null),
      DrawerRoute(text: "Cooking", pageRouteInfo: null),
      DrawerRoute(text: "Culture", pageRouteInfo: null),
      DrawerRoute(text: "Shopping", pageRouteInfo: null),
      DrawerRoute(text: "Restaurants", pageRouteInfo: null),
      DrawerRoute(text: "BA Market", pageRouteInfo: null),
      DrawerRoute(text: "Videos", pageRouteInfo: null),
      DrawerRoute(text: "Podcast", pageRouteInfo: null),
      DrawerRoute(text: "Merch Shop", pageRouteInfo: null),
    ];
  }
}
