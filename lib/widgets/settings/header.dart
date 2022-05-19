import 'package:flutter/material.dart';

import '../../style/index.dart';

class SettingsHeaderWidget extends StatelessWidget {
  final String header;
  final String subHeader;

  const SettingsHeaderWidget({
    required this.header,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header, style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: 8.0),
        Text(
          subHeader,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: BonAppetitColors.dimGray),
        ),
        const SizedBox(height: 8.0),
        const Divider(),
      ],
    );
  }
}
