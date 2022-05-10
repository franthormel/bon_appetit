import 'package:flutter/material.dart';

import '../others/scaffolded_will_pop.dart';
import 'container.dart';
import 'end.dart';
import 'header.dart';

class AuthMainWidget extends StatelessWidget {
  final Widget child;
  final String? email;
  final Widget? end;
  final String header;
  final String subHeader;

  const AuthMainWidget({
    required this.child,
    required this.header,
    required this.subHeader,
    this.email,
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
          AuthHeaderWidget(email: email, header: header, subHeader: subHeader),
          AuthContainerWidget(child: child),
          if (end != null) AuthEndWidget(child: end!),
        ],
      ),
    );
  }
}
