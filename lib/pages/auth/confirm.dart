import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class AuthConfirmPage extends StatelessWidget {
  final String email;
  final String password;

  const AuthConfirmPage({
    required this.email,
    required this.password,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      child: AuthPageConfirmWidget(email: email, password: password),
      email: email,
      header: "Create an account",
      subHeader: "Please enter a password to register a new account.",
    );
  }
}
