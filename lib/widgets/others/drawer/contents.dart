import 'package:bon_appetit/router/index.dart';
import 'package:flutter/material.dart';

import '../../../models/index.dart';
import 'account.dart';
import 'footer.dart';
import 'router.dart';

class DrawerContentsWidget extends StatelessWidget {
  const DrawerContentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...routes.map<Widget>((route) => DrawerRouterWidget(route)).toList(),
        const DrawerAccountWidget(),
        const DrawerFooterWidget(),
      ],
    );
  }

  // TODO Remove null and use actual page (use blank pages for now)
  List<DrawerRoute> get routes {
    return <DrawerRoute>[
      DrawerRoute("Recipes", pageRouteInfo: const DrawerRecipesRoute()),
      DrawerRoute("Cooking"),
      DrawerRoute("Culture"),
      DrawerRoute("Shopping"),
      DrawerRoute("Restaurants"),
      DrawerRoute("Videos"),
    ];
  }
}
