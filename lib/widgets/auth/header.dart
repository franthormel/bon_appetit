import 'package:flutter/material.dart';

import '../../style/index.dart';

class AuthHeaderWidget extends StatelessWidget {
  final String? email;
  final String header;
  final String subHeader;

  const AuthHeaderWidget({
    required this.header,
    required this.subHeader,
    this.email,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [
          Text(
            header,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
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
              style: BonAppetitThemeRadley.bodyText1?.copyWith(
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
