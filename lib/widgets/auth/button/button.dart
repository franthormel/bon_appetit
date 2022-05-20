import 'package:flutter/material.dart';

import 'size.dart';

class AuthButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const AuthButtonWidget({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthButtonSizeWidget(
      child: ElevatedButton(onPressed: onPressed, child: Text(text)),
    );
  }
}
