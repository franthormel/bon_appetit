import 'package:flutter/material.dart';

class HeaderBodyFiveWidget extends StatelessWidget {
  final String title;
  final String body;

  final Color? dividerColor;
  final double? dividerEndIndent;

  const HeaderBodyFiveWidget({
    required this.title,
    required this.body,
    this.dividerColor,
    this.dividerEndIndent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headline5),
        Divider(
          color: dividerColor ?? Colors.transparent,
          endIndent: dividerEndIndent,
        ),
        Text(
          body,
          style:
              Theme.of(context).textTheme.subtitle1?.apply(fontSizeDelta: 2.0),
        ),
      ],
    );
  }
}
