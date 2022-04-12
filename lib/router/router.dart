import 'package:auto_route/auto_route.dart';

import '../pages/index.dart';
import 'constants.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: DataProviderPage,
      name: RouteName.initial,
      path: RoutePath.initial,
      children: <AutoRoute>[
        CustomRoute(
          page: HomePage,
          name: RouteName.home,
          path: RoutePath.home,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: SearchPage,
          name: RouteName.search,
          path: RoutePath.search,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        AutoRoute(
          page: RecipeDetailsPage,
          name: RouteName.detailsRecipe,
          path: RoutePath.detailsRecipe,
        ),
        AutoRoute(
          page: ArticleDetailsPage,
          name: RouteName.detailsArticle,
          path: RoutePath.detailsArticle,
        ),
        AutoRoute(
          page: VideoDetailsPage,
          name: RouteName.videoDetails,
          path: RoutePath.videoDetails,
        ),
        CustomRoute(
          page: DrawerCookingPage,
          name: RouteName.drawerCooking,
          path: RoutePath.drawerCooking,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: DrawerCulturePage,
          name: RouteName.drawerCulture,
          path: RoutePath.drawerCulture,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: DrawerRecipesPage,
          name: RouteName.drawerRecipes,
          path: RoutePath.drawerRecipes,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: DrawerRestaurantsPage,
          name: RouteName.drawerRestaurants,
          path: RoutePath.drawerRestaurants,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: DrawerShoppingPage,
          name: RouteName.drawerShopping,
          path: RoutePath.drawerShopping,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: DrawerVideosPage,
          name: RouteName.drawerVideos,
          path: RoutePath.drawerVideos,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: RouteName.initial),
  ],
)
class $AppRouter {}
