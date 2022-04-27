import 'package:flutter/material.dart';

import '../../../../style/index.dart';

class FilterDialogItemWidget extends StatelessWidget {
  final Widget header;

  /// This widget will be placed between the [header] widget and the gray [Divider] at the end.
  final Widget? middle;

  const FilterDialogItemWidget({
    required this.header,
    this.middle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        if (middle != null) middle!,
        const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
