import 'package:flutter/material.dart';

import '../../router/index.dart';
import 'email_password/email_password.dart';
import 'email_password/mixin.dart';

class AuthLoginWidget extends StatelessWidget with AuthEmailPasswordMixin {
  final String email;

  const AuthLoginWidget(this.email, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthEmailPasswordWidget(
      email: email,
      onPasswordSubmit: onPasswordSubmit,
    );
  }

  @override
  String? onPasswordSubmit(RouteProvider router, String password) {
    // TODO: onPasswordSubmit
    return null;
  }
}
