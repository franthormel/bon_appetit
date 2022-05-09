import 'package:flutter/material.dart';

import '../others/scaffolded_will_pop.dart';
import 'container.dart';
import 'header.dart';
import 'end.dart';

class AuthMainWidget extends StatelessWidget {
  final Widget child;
  final Widget? end;
  final String header;
  final String subHeader;

  const AuthMainWidget({
    required this.child,
    required this.header,
    required this.subHeader,
    this.end,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldedWillPopWidget(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: [
          AuthHeaderWidget(header: header, subHeader: subHeader),
          AuthContainerWidget(child: child),
          if (end != null) AuthEndWidget(child: end!),
        ],
      ),
    );
  }
}
