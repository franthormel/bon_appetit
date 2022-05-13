import 'package:flutter/material.dart';

import '../../../widgets/index.dart';

class AuthMagicLinkSendPage extends StatelessWidget {
  final String email;

  const AuthMagicLinkSendPage({
    required this.email,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      child: const AuthMagicLinkSendPageWidget(),
      header: "Check your inbox",
      subHeader: "Finish signing in by clicking the link sent to ",
      email: email,
      title: "Sign in help",
    );
  }
}
