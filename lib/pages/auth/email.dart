import 'package:flutter/material.dart';

import '../../widgets/index.dart';

/// This page serves as a checkpoint for the email if it can be used for sign-in or not.
class AuthEmailPage extends StatelessWidget {
  const AuthEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthMainWidget(
      header: "Sign in to your account",
      subHeader: "Enter your email address to continue.",
      child: AuthEmailWidget(),
    );
  }
}
