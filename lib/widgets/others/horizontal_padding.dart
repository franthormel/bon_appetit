import 'package:flutter/material.dart';

class HorizontalPaddingWidget extends StatelessWidget {
  final Widget child;

  const HorizontalPaddingWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: child,
    );
  }
}
