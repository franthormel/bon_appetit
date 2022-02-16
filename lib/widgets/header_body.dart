import 'package:flutter/material.dart';

class HeaderBodyWidget extends StatelessWidget {
  final String title;
  final String body;

  const HeaderBodyWidget({
    required this.title,
    required this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.headline4),
        const Divider(color: Colors.transparent),
        Text(body, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
