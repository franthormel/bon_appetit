import 'package:flutter/material.dart';

import '../../../style/colors.dart';

class RecipeDetailsRateRecipeStarsWidget extends StatefulWidget {
  const RecipeDetailsRateRecipeStarsWidget({Key? key}) : super(key: key);

  @override
  State<RecipeDetailsRateRecipeStarsWidget> createState() =>
      _RecipeDetailsRateRecipeStarsWidgetState();
}

class _RecipeDetailsRateRecipeStarsWidgetState
    extends State<RecipeDetailsRateRecipeStarsWidget> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: stars,
    );
  }

  List<IconButton> get stars {
    final iconButtons = <IconButton>[];

    for (final number in [1, 2, 3, 4, 5]) {
      final value = number + 1;
      final color =
          rating >= value ? BonAppetitColors.black : BonAppetitColors.platinum;

      iconButtons.add(IconButton(
        onPressed: () {
          setState(() {
            rating = value;
          });
        },
        icon: Icon(Icons.star, color: color, size: 35.0),
      ));
    }

    return iconButtons;
  }
}
