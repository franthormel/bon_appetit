import 'package:bon_appetit/services/index.dart';
import 'package:flutter/material.dart';

import '../../../../router/index.dart';
import '../../email_password/email_password.dart';
import '../../email_password/mixin.dart';

class AuthRegisterPageWidget extends StatelessWidget
    with AuthEmailPasswordMixin {
  final String email;

  const AuthRegisterPageWidget(this.email, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthEmailPasswordWidget(
      buttonText: "SIGN UP",
      email: email,
      googleButtonCallback: FirebaseAnalyticsService.logSignUpViaGoogle,
      onPasswordSubmit: onPasswordSubmit,
    );
  }

  @override
  String? onPasswordSubmit(RouteProvider router, String password) {
    const minimumPasswordLength = 6;
    String? value;

    // Password must not be empty and be at least six (6) characters in length
    // to be able to proceed to the account creation confirmation page ...
    if (password.isEmpty) {
      value = "Required.";
    } else if (password.length < minimumPasswordLength) {
      value = "Password should be at least $minimumPasswordLength characters.";
    } else {
      router.push(AuthRegisterConfirmRoute(
        email: email,
        password: password,
      ));
    }

    // ... otherwise show error text
    return value;
  }
}
