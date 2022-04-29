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
        AutoRoute(
          page: HomePage,
          name: RouteName.home,
          path: RoutePath.home,
        ),
        AutoRoute(
          page: SearchPage,
          name: RouteName.search,
          path: RoutePath.search,
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
        AutoRoute(
          page: DrawerCookingPage,
          name: RouteName.drawerCooking,
          path: RoutePath.drawerCooking,
        ),
        AutoRoute(
          page: DrawerCulturePage,
          name: RouteName.drawerCulture,
          path: RoutePath.drawerCulture,
        ),
        AutoRoute(
          page: DrawerRecipesPage,
          name: RouteName.drawerRecipes,
          path: RoutePath.drawerRecipes,
        ),
        AutoRoute(
          page: DrawerRestaurantsPage,
          name: RouteName.drawerRestaurants,
          path: RoutePath.drawerRestaurants,
        ),
        AutoRoute(
          page: DrawerShoppingPage,
          name: RouteName.drawerShopping,
          path: RoutePath.drawerShopping,
        ),
        AutoRoute(
          page: DrawerVideosPage,
          name: RouteName.drawerVideos,
          path: RoutePath.drawerVideos,
        ),
        AutoRoute(
          page: SearchRecipeFiltersPage,
          name: RouteName.searchRecipeFilters,
          path: RoutePath.searchRecipeFilters,
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: RouteName.initial),
  ],
)
class $AppRouter {}
