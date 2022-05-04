import 'package:flutter/material.dart';

import '../../style/index.dart';

class BlackTextButtonWidget extends StatelessWidget {
  /// Default is [BonAppetitColors.black]
  final Color? backgroundColor;
  final Color? borderColor;

  /// Default is [BonAppetitColors.white]
  final Color? foregroundColor;
  final double? height;
  final void Function() onPressed;
  final String text;
  final double? width;

  const BlackTextButtonWidget({
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.borderColor,
    this.foregroundColor,
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        child: Text(text),
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor ?? BonAppetitColors.black),
          foregroundColor: MaterialStateProperty.all<Color>(
              foregroundColor ?? BonAppetitColors.white),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: _borderSide,
            ),
          ),
        ),
      ),
    );
  }

  BorderSide get _borderSide =>
      borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none;
}
