import 'package:flutter/material.dart';

class RecipeDetailsPageTitleWidget extends StatelessWidget {
  final String title;

  const RecipeDetailsPageTitleWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
