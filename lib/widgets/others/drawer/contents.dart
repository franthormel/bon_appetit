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

  List<DrawerRoute> get routes {
    return <DrawerRoute>[
      DrawerRoute("Recipes", pageRouteInfo: const DrawerRecipesRoute()),
      DrawerRoute("Cooking", pageRouteInfo: const DrawerCookingRoute()),
      DrawerRoute("Culture", pageRouteInfo: const DrawerCultureRoute()),
      DrawerRoute("Shopping", pageRouteInfo: const DrawerShoppingRoute()),
      DrawerRoute("Restaurants", pageRouteInfo: const DrawerRestaurantsRoute()),
      DrawerRoute("Videos", pageRouteInfo: const DrawerVideosRoute()),
    ];
  }
}
