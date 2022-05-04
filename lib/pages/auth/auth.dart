import 'package:flutter/material.dart';

import '../../widgets/index.dart';
import 'account.dart';
import 'email.dart';

/// This widget is serves as the initial page when accessing the [RoutePath.auth] url.
/// If the user is authenticated, display their account page otherwise show the email sign in page.
class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthUserChangeWidget(
      userWidget: AuthAccountPage(),
      nullUserWidget: AuthEmailPage(),
    );
  }
}
