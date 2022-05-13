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
  final String title;

  const AuthMainWidget({
    required this.child,
    required this.header,
    required this.subHeader,
    required this.title,
    this.email,
    this.end,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldedWillPopWidget(
      appBar: AppBar(title: Text(title)),
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
