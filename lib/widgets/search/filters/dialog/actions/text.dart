import 'package:flutter/material.dart';

class FiltersDialogActionTextWidget extends StatelessWidget {
  final String text;
  final Color? color;

  const FiltersDialogActionTextWidget(
    this.text, {
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: Theme.of(context)
          .textTheme
          .bodyText1
          ?.copyWith(color: color, fontWeight: FontWeight.w500),
    );
  }
}
