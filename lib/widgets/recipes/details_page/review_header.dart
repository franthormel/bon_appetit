import 'package:flutter/material.dart';

class RecipeDetailsPageReviewHeaderWidget extends StatelessWidget {
  const RecipeDetailsPageReviewHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("READ REVIEWS",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.5)),
        const Icon(Icons.arrow_drop_down),
      ],
    );
  }
}
