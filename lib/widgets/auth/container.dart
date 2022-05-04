import 'package:flutter/material.dart';

import '../../style/index.dart';

class AuthContainerWidget extends StatelessWidget {
  final Widget child;

  const AuthContainerWidget({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.white,
      padding: const EdgeInsets.all(32.0),
      child: child,
    );
  }
}
