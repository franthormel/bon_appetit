import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../services/index.dart';
import '../../button/button.dart';
import 'checkbox/checkbox.dart';
import 'utility_text.dart';

class AuthPageConfirmWidget extends StatelessWidget {
  final String email;
  final String password;

  const AuthPageConfirmWidget({
    required this.email,
    required this.password,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthPageConfirmCheckboxWidget(),
        const AuthPageConfirmUtilityTextWidget(),
        AuthButtonWidget(
          onPressed: attemptAccountCreation,
          text: "CREATE ACCOUNT",
        ),
      ],
    );
  }

  Future<void> attemptAccountCreation() async {
    try {
      final account = await FirebaseAuthService.createUser(
          email: email, password: password);

      if (account.user != null) {
        // TODO: Show sign in confirmation page
      } else {
        // TODO: Throw generic Exception
      }
    } on FirebaseAuthException catch (e) {
      // TODO: Display error page with specified message
      print("FirebaseAuthException: ${e.message}");
    } on Exception catch (e) {
      // TODO: Display general error page
      print(e.toString());
    }
  }
}
