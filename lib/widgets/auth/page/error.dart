import 'package:flutter/material.dart';

import '../button/button.dart';

class AuthErrorPageWidget extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;

  const AuthErrorPageWidget({
    required this.buttonText,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthButtonWidget(onPressed: onPressed, text: buttonText);
  }
}
