import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';
import 'rate_recipe_stars.dart';

class RecipeDetailsRateRecipeWidget extends StatelessWidget {
  final String title;

  const RecipeDetailsRateRecipeWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Divider(),
          const SizedBox(height: 10.0),
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 10.0),
          const RecipeDetailsRateRecipeStarsWidget(),
          const SizedBox(height: 10.0),
          const Divider(),
        ],
      ),
    );
  }

  String get text => "How would you rate $title?";
}
