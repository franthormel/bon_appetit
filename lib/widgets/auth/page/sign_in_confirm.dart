import 'package:flutter/material.dart';

import '../button/button.dart';

class AuthPageSignInConfirmWidget extends StatelessWidget {
  const AuthPageSignInConfirmWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthButtonWidget(onPressed: () {}, text: "CONTINUE");
  }
}
