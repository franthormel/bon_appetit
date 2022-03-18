import 'package:flutter/material.dart';

class DesignedContainerWidget extends StatelessWidget {
  final Color? color;
  final Widget child;

  const DesignedContainerWidget({
    required this.child,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 35.0,
        top: 21.0,
      ),
      child: child,
    );
  }
}
