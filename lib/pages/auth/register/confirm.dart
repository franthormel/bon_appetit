import 'package:flutter/material.dart';

import '../../../widgets/index.dart';

class AuthRegisterConfirmPage extends StatelessWidget {
  final String email;
  final String password;

  const AuthRegisterConfirmPage({
    required this.email,
    required this.password,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      email: email,
      header: "Create an account",
      subHeader: "Finish creating your account: ",
      title: "Sign up confirm",
      child: AuthConfirmPageWidget(email: email, password: password),
    );
  }
}
