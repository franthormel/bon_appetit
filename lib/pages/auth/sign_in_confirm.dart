import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class AuthSignInConfirmPage extends StatelessWidget {
  const AuthSignInConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthMainWidget(
      child: AuthSignInPageConfirmWidget(),
      header: "You’re signed in",
      subHeader: "You can resume right where you left off.",
      title: "Sign in success",
    );
  }
}
