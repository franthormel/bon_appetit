import 'package:flutter/material.dart';

import '../../style/colors.dart';

class HeaderSectionWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? color;

  const HeaderSectionWidget({
    required this.title,
    required this.subtitle,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title.toUpperCase(),
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: color, fontWeight: FontWeight.w700),
        ),
        const Divider(color: Colors.transparent),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: color ?? BonAppetitColors.black),
        ),
      ],
    );
  }
}
