import 'package:flutter/material.dart';

import 'header.dart';
import 'container.dart';

class AuthMainWidget extends StatelessWidget {
  final Widget child;
  final String header;
  final String subHeader;

  const AuthMainWidget({
    required this.child,
    required this.header,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AuthHeaderWidget(header: header, subHeader: subHeader),
          AuthContainerWidget(child: child),
        ],
      ),
    );
  }
}
