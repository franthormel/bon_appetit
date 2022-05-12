import 'package:flutter/material.dart';

class AuthLabelWidget extends StatelessWidget {
  final String text;

  const AuthLabelWidget({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyText1
          ?.copyWith(fontWeight: FontWeight.w600),
    );
  }
}
