import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class AuthSignInPage extends StatelessWidget {
  const AuthSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthMainWidget(
      header: "Sign in to your account",
      subHeader: "Enter your email address to continue.",
      child: AuthSignInWidget(),
    );
  }
}
