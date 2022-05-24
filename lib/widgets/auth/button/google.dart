import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import '../../../services/index.dart';
import 'size.dart';

class AuthGoogleProviderButtonWidget extends StatelessWidget {
  /// Called when trying to login via Google OAuth.
  final void Function()? callback;

  const AuthGoogleProviderButtonWidget({
    this.callback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = Provider.of<RouteProvider>(context, listen: false);

    return AuthButtonSizeWidget(
      child: ElevatedButton.icon(
        icon: SvgPicture.asset('assets/google.svg'),
        label: const Center(child: Text("SIGN IN WITH GOOGLE")),
        onPressed: () {
          signIn(router);
        },
      ),
    );
  }

  Future<void> signIn(RouteProvider router) async {
    try {
      await FirebaseAuthService.signInWithGoogle();

      if (callback != null) {
        callback!();
      }

      // TODO: Initialize new data for the user here

      router.goToHomepage();
    } on FirebaseAuthException catch (e) {
      router.push(AuthErrorRoute(
        errorButtonText: "GO BACK",
        errorText: e.message,
        onPressed: router.pop,
      ));
    } on Exception {
      router.push(AuthErrorRoute(
        errorButtonText: "GO BACK",
        onPressed: router.pop,
      ));
    }
  }
}
