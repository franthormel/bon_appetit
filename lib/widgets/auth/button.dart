import 'package:flutter/material.dart';

import '../others/outlined_text_button.dart';

class AuthButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const AuthButtonWidget({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedTextButtonWidget(
      text: text,
      onPressed: onPressed,
      height: 50.0,
      width: double.infinity,
    );
  }
}
