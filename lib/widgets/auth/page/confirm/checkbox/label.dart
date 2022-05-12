import 'package:flutter/material.dart';

class ConfirmCheckboxLabelWidget extends StatelessWidget {
  const ConfirmCheckboxLabelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        "Yes, I would like to receive daily recipes, articles, tips, and more.",
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
