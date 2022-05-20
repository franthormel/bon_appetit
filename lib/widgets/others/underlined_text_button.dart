import 'package:flutter/material.dart';

class UnderlinedTextButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const UnderlinedTextButtonWidget({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(decoration: TextDecoration.underline),
      ),
    );
  }
}
