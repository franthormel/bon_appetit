import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';

class RecipeDetailsReadReviewsWidget extends StatelessWidget {
  const RecipeDetailsReadReviewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "READ REVIEWS",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.5),
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
