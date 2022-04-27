import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'header.dart';

class FilterDialogItemWidget extends StatelessWidget {
  final Widget child;
  final String text;

  const FilterDialogItemWidget({
    required this.child,
    required this.text,
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
        const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
