import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class AuthConfirmPage extends StatelessWidget {
  final String email;

  const AuthConfirmPage({required this.email, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      child: AuthPageConfirmWidget(email),
      email: email,
      header: "Create an account",
      subHeader: "Please enter a password to register a new account.",
    );
  }
}
