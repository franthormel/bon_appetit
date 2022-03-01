import 'package:auto_route/auto_route.dart';

import '../pages/index.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(initial: true, page: HomePage),
    // TODO Fix title too bold
    // TODO Add (better not default) page transition from TopRight
    AutoRoute(page: SearchPage),
  ],
)
class $AppRouter {}
