import 'package:flutter/material.dart';

import '../others/will_pop.dart';
import 'container.dart';
import 'header.dart';

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
    return WillPopWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            AuthHeaderWidget(header: header, subHeader: subHeader),
            AuthContainerWidget(child: child),
          ],
        ),
      ),
    );
  }
}
