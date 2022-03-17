import 'package:auto_route/auto_route.dart';

import '../pages/index.dart';
import 'route.constants.dart';

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
          name: RouteName.recipeDetails,
          path: RoutePath.recipeDetails,
        ),
        AutoRoute(
          page: ArticleDetailsPage,
          name: RouteName.articleDetails,
          path: RoutePath.articleDetails,
        )
      ],
    ),
    RedirectRoute(path: '*', redirectTo: RouteName.initial),
  ],
)
class $AppRouter {}
