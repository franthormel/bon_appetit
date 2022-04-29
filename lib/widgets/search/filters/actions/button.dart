import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import 'text.dart';

class SearchFiltersActionButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color? borderColor;
  final void Function() onPressed;
  final String text;
  final Color? textColor;

  const SearchFiltersActionButtonWidget({
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
    this.borderColor,
    this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: TextButton(
        child: SearchFiltersActionTextWidget(text, color: textColor),
        onPressed: () {
          onPressed();
          Provider.of<RouteProvider>(context, listen: false).pop();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
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
