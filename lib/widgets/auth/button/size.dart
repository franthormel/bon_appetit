import 'package:flutter/material.dart';

class AuthButtonSizeWidget extends StatelessWidget {
  final Widget child;

  const AuthButtonSizeWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50.0, width: double.infinity, child: child);
  }
}
