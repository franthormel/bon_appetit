import 'package:flutter/material.dart';

class RecipeDetailsTitleWidget extends StatelessWidget {
  final String title;

  const RecipeDetailsTitleWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
