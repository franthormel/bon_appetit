import 'package:flutter/material.dart';

class DrawerPagePaddingWidget extends StatelessWidget {
  final Widget child;

  const DrawerPagePaddingWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(15.0), child: child);
  }
}
