import 'package:flutter/material.dart';

import '../../../../style/index.dart';

class SearchPageActionFilterDialogItemWidget extends StatelessWidget {
  final String text;

  /// This widget will be placed between the title [Text] widget and the gray [Divider] at the end.
  final Widget? child;

  const SearchPageActionFilterDialogItemWidget(
    this.text, {
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10.0),
        if (child != null)
          Column(children: [child!, const SizedBox(height: 10.0)]),
        const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
