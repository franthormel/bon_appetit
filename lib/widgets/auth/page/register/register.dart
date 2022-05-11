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
      email: email,
      onPasswordSubmit: onPasswordSubmit,
    );
  }

  @override
  String? onPasswordSubmit(RouteProvider router, String password) {
    const minimumPasswordLength = 6;
    String? value;

    // If password is at least six (6) characters in length go to the next page ...
    if (password.length >= minimumPasswordLength) {
      router.push(AuthConfirmRoute(email: email, password: password));
    } else {
      value = "Password should be at least $minimumPasswordLength characters.";
    }

    // ... otherwise show error text
    return value;
  }
}
