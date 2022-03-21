import 'package:flutter/material.dart';

import '../../others/category_box.dart';
import '../../others/horizontal_padding.dart';

class RecipeDetailsIssueWidget extends StatelessWidget {
  final String? issue;

  const RecipeDetailsIssueWidget(this.issue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CategoryBoxWidget("Recipes"),
          const SizedBox(width: 10.0),
          if (issue != null)
            Text(issue!.toUpperCase(),
                style: Theme.of(context).textTheme.caption),
        ],
      ),
    );
  }
}
