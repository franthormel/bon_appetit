import 'package:flutter/material.dart';

import '../../../widgets/index.dart';

/// This page is where the user can register using email (and password) and other available providers.
class AuthRegisterPage extends StatelessWidget {
  final String email;

  const AuthRegisterPage({
    required this.email,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      child: AuthRegisterPageWidget(email),
      end: const AuthRegisterPageEndWidget(),
      header: "Create an account",
      subHeader: "Please enter a password to register a new account.",
      title: "Sign up",
    );
  }
}
