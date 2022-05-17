import 'package:flutter/material.dart';

import '../../router/index.dart';
import 'auth/auth.dart';
import 'router.dart';
import 'settings.dart';

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
        DrawerSettingsWidget(),
        DrawerAuthWidget(),
      ],
    );
  }
}
