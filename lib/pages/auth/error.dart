import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class AuthErrorPage extends StatelessWidget {
  final String? errorText;
  final void Function() onPressed;
  final String errorButtonText;

  const AuthErrorPage({
    required this.errorButtonText,
    required this.onPressed,
    this.errorText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      header: "Error occurred",
      subHeader: errorText ?? "Unknown error occurred.",
      title: "Sign in error",
      child: AuthErrorPageWidget(
        onPressed: onPressed,
        buttonText: errorButtonText,
      ),
    );
  }
}
