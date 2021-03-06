import 'package:flutter/material.dart';

import '../../style/index.dart';

class OutlinedTextButtonWidget extends StatelessWidget {
  /// Default is [BonAppetitColors.black]
  final Color? backgroundColor;
  final Color? borderColor;

  /// Default is [BonAppetitColors.white]
  final Color? foregroundColor;
  final double? height;
  final void Function() onPressed;
  final String text;
  final double? width;

  const OutlinedTextButtonWidget({
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
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color?>(backgroundColor),
          foregroundColor: MaterialStateProperty.all<Color?>(foregroundColor),
          side: MaterialStateProperty.all<BorderSide>(_borderSide),
        ),
        child: Text(text),
      ),
    );
  }

  BorderSide get _borderSide =>
      borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none;
}
