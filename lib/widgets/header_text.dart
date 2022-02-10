import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  final String text;

  const HeaderTextWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
