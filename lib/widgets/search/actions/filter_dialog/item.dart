import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'text.dart';

class FilterDialogItemWidget extends StatelessWidget {
  final String text;

  /// This widget will be placed between the [header] widget and the gray [Divider] at the end.
  final Widget? middle;

  const FilterDialogItemWidget({
    required this.text,
    this.middle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FilterDialogTextWidget(text),
        const SizedBox(height: 10.0),
        if (middle != null) middle!, // TODO: Add white space here too without using Column
        const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
