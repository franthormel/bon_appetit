import 'package:flutter/material.dart';

import '../../router/index.dart';
import 'account/account.dart';
import 'router.dart';

class DrawerContentsWidget extends StatelessWidget {
  const DrawerContentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DrawerRouterWidget("Recipes", DrawerRecipesRoute()),
        DrawerRouterWidget("Cooking", DrawerCookingRoute()),
        DrawerRouterWidget("Culture", DrawerCultureRoute()),
        DrawerRouterWidget("Shopping", DrawerShoppingRoute()),
        DrawerRouterWidget("Restaurants", DrawerRestaurantsRoute()),
        DrawerRouterWidget("Videos", DrawerVideosRoute()),
        DrawerAccountWidget(),
      ],
    );
  }
}
