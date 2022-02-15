import 'package:flutter/material.dart';

class HeaderSubtext extends StatelessWidget {
  final String text;

  const HeaderSubtext({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
