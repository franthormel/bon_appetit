import 'package:flutter/material.dart';

class AuthButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const AuthButtonWidget({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Style
    return ElevatedButton(
      child: Text(text),
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
    );
  }
}
