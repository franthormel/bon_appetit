import 'package:flutter/material.dart';

import '../../widgets/index.dart';

/// This page is where the user will sign-in with email and password.
class AuthLoginPage extends StatelessWidget {
  const AuthLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthMainWidget(
      header: "Sign in to your account",
      subHeader: "Enter your password to continue.",
      child: AuthLoginWidget(),
    );
  }
}
