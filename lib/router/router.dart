import 'package:auto_route/auto_route.dart';

import '../pages/index.dart';
import '../widgets/providers/data_provider.dart';
import 'constants.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: DataProviderWidget,
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
      ],
    ),
    RedirectRoute(path: '*', redirectTo: RouteName.initial),
  ],
)
class $AppRouter {}
