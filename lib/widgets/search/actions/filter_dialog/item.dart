import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'header.dart';

class FilterDialogItemWidget extends StatelessWidget {
  final Widget child; // TODO: Refactor
  final String text;
  final bool divider;

  const FilterDialogItemWidget({
    required this.child,
    required this.text,
    this.divider = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FilterDialogHeaderWidget(text),
        const SizedBox(height: 10.0),
        child,
        const SizedBox(height: 10.0),
        if (divider) const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
