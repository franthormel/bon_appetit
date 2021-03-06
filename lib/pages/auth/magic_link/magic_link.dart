import 'package:flutter/material.dart';

import '../../../widgets/index.dart';

class AuthMagicLinkPage extends StatelessWidget {
  final String email;

  const AuthMagicLinkPage({required this.email, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      end: const AuthMagicLinkEndPageWidget(),
      header: "Get help signing in",
      subHeader:
          "Enter your email address to receive a sign-in link, no password necessary.",
      title: "Sign in help",
      child: AuthMagicLinkPageWidget(email),
    );
  }
}
