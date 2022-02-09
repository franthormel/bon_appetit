import 'package:flutter/material.dart';

class RecipeRatingWidget extends StatelessWidget {
  final String rating;

  const RecipeRatingWidget({
    required this.rating,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star),
        Text(
          rating,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
