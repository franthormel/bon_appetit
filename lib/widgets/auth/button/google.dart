import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import 'size.dart';

class AuthGoogleProviderButtonWidget extends StatelessWidget {
  const AuthGoogleProviderButtonWidget({Key? key}) : super(key: key);

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
    final credential = await _getGoogleCredential();

    try {
      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);

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

  Future<OAuthCredential> _getGoogleCredential() async {
    // Trigger the authentication flow
    final user = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final auth = await user?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: auth?.accessToken,
      idToken: auth?.idToken,
    );

    return credential;
  }
}