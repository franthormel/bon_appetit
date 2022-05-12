import 'package:flutter/material.dart';

class AuthEndWidget extends StatelessWidget {
  final Widget child;

  const AuthEndWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: child,
      padding: const EdgeInsets.symmetric(vertical: 32.0),
    );
  }
}
