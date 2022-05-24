import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../router/index.dart';
import '../../../../services/index.dart';
import '../../email_password/email_password.dart';
import '../../email_password/mixin.dart';

class AuthLoginWidget extends StatelessWidget with AuthEmailPasswordMixin {
  final String email;

  const AuthLoginWidget(this.email, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthEmailPasswordWidget(
      buttonText: "SIGN IN",
      email: email,
      googleButtonCallback: FirebaseAnalyticsService.logLoginViaGoogle,
      onPasswordSubmit: onPasswordSubmit,
    );
  }

  @override
  String? onPasswordSubmit(RouteProvider router, String password) {
    String? value;

    // Attempt to sign in if password provided is not empty
    if (password.isNotEmpty) {
      _attemptSignIn(router, password);
    } else {
      value = "Required.";
    }

    // ... otherwise return an errorText for the password field
    return value;
  }

  Future<void> _attemptSignIn(RouteProvider router, String password) async {
    try {
      final account = await FirebaseAuthService.signIn(
        email: email,
        password: password,
      );

      // Show the sign in confirm page if the email and password are valid
      if (account.user != null) {
        // TODO: Initialize new data for the user here
        router.push(const AuthSignInConfirmRoute());
      } else {
        throw Exception();
      }
    } on FirebaseAuthException catch (e) {
      router.push(AuthErrorRoute(
        errorButtonText: "GO BACK",
        errorText: e.message,
        onPressed: router.pop,
      ));
    } on Exception {
      router.push(AuthErrorRoute(
        errorButtonText: "GO BACK",
        errorText: "Invalid email or password provided.",
        onPressed: router.pop,
      ));
    }
  }
}
