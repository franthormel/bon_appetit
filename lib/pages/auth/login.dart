import 'package:flutter/material.dart';

import '../../widgets/index.dart';

/// This page is where the user will sign-in with email and password.
class AuthLoginPage extends StatelessWidget {
  final String email;

  const AuthLoginPage({
    required this.email,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      child: AuthLoginWidget(email),
      end: AuthLoginPageEndWidget(email),
      header: "Sign in to your account",
      subHeader: "Enter your password to continue.",
    );
  }
}
