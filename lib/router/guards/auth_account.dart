import 'package:auto_route/auto_route.dart';

import '../../services/index.dart';

class AuthAccountPageGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (FirebaseAuthService.isAuthenticated) {
      resolver.next(true);
    }
  }
}
