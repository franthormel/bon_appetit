import 'package:flutter/material.dart';

class HeaderBodyFiveWidget extends StatelessWidget {
  final String title;
  final String body;
  final Color? color;

  const HeaderBodyFiveWidget({
    required this.title,
    required this.body,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headline5),
        const Divider(color: Colors.transparent),
        Text(
          body,
          style:
              Theme.of(context).textTheme.subtitle1?.apply(fontSizeDelta: 2.0),
        ),
      ],
    );
  }
}
