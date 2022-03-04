import 'package:auto_route/auto_route.dart';

import '../pages/index.dart';
import 'constants.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
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
)
class $AppRouter {}
