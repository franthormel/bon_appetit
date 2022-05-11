import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import '../../../../services/index.dart';
import '../../button/button.dart';
import 'checkbox/checkbox.dart';
import 'utility_text.dart';

class AuthConfirmPageWidget extends StatelessWidget {
  final String email;
  final String password;

  const AuthConfirmPageWidget({
    required this.email,
    required this.password,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthConfirmPageCheckboxWidget(),
        const AuthConfirmPageUtilityTextWidget(),
        AuthButtonWidget(
          onPressed: () {
            attemptAccountCreation(context);
          },
          text: "CREATE ACCOUNT",
        ),
      ],
    );
  }

  Future<void> attemptAccountCreation(BuildContext context) async {
    final router = Provider.of<RouteProvider>(context, listen: false);

    try {
      final account = await FirebaseAuthService.createUser(
        email: email,
        password: password,
      );

      if (account.user != null) {
        router.push(const AuthSignInConfirmRoute());
      } else {
        throw Exception();
      }
    } on FirebaseAuthException catch (e) {
      router.push(AuthErrorRoute(
        errorButtonText: "GO TO HOMEPAGE",
        errorText: e.message,
        onPressed: router.goToHomepage,
      ));
    } on Exception {
      router.push(AuthErrorRoute(
        errorButtonText: "GO TO HOMEPAGE",
        onPressed: router.goToHomepage,
      ));
    }
  }
}
