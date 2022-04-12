import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/horizontal_padding.dart';
import '../../others/rating_stars.dart';

class RecipeDetailsRatingWidget extends StatelessWidget {
  final RecipeRating rating;

  const RecipeDetailsRatingWidget(this.rating, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(
        children: [
          const Divider(),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(rating.value, style: Theme.of(context).textTheme.headline5),
              const SizedBox(width: 10.0),
              RatingStarsWidget(double.tryParse(rating.value)),
              const SizedBox(width: 10.0),
              Text("(${rating.count})",
                  style: Theme.of(context).textTheme.caption),
            ],
          )
        ],
      ),
    );
  }
}
