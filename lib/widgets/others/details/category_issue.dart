import 'package:flutter/material.dart';

import '../category_box.dart';
import '../horizontal_padding.dart';

class DetailsCategoryIssueWidget extends StatelessWidget {
  final String category;
  final String? issue;

  const DetailsCategoryIssueWidget(
    this.category, {
    this.issue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryBoxWidget(category),
          if (issue != null)
            Row(
              children: [
                const SizedBox(width: 10.0),
                Text(
                  issue!.toUpperCase(),
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            )
        ],
      ),
    );
  }
}
