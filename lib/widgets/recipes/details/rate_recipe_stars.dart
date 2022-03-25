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
    final numbers = List.generate(5, (index) => index);

    return numbers.map<IconButton>((index) {
      final value = index + 1;

      return IconButton(
        onPressed: () {
          setState(() {
            rating = value;
          });
        },
        icon: Icon(Icons.star, color: color(value), size: 35.0),
      );
    }).toList();
  }

  Color color(int value) =>
      rating >= value ? BonAppetitColors.black : BonAppetitColors.platinum;
}
