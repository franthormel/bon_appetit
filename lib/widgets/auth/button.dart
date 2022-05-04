import 'package:flutter/material.dart';

import '../../style/index.dart';

class AuthButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const AuthButtonWidget({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: Text(text),
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all<Color>(BonAppetitColors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(BonAppetitColors.black),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
        ),
      ),
    );
  }
}
