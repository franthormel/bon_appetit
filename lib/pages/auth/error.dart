import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class AuthErrorPage extends StatelessWidget {
  final String errorText;

  const AuthErrorPage({required this.errorText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthMainWidget(
      header: "Error occurred",
      subHeader: errorText,
      child: const AuthPageErrorWidget(),
    );
  }
}
