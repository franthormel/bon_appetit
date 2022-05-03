import 'package:flutter/material.dart';

import '../../style/index.dart';
import 'container.dart';

class AuthHeaderWidget extends StatelessWidget {
  final String? email;
  final String header;
  final String subHeader;
  final Widget child;

  const AuthHeaderWidget({
    required this.child,
    required this.header,
    required this.subHeader,
    this.email,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Text(
            header,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
          Text(
            subHeader,
            style: BonAppetitThemeRadley.bodyText1?.copyWith(
              color: BonAppetitColors.dimGray,
            ),
            textAlign: TextAlign.center,
          ),
          if (email != null)
            Text(
              email!,
              style: BonAppetitThemeRadley.bodyText1,
              textAlign: TextAlign.center,
            ),
          AuthContainerWidget(child: child),
        ],
      ),
    );
  }
}
