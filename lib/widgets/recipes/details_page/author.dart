import 'package:flutter/material.dart';

class RecipeDetailsPageAuthorWidget extends StatelessWidget {
  final String author;

  const RecipeDetailsPageAuthorWidget(
    this.author, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "By $author".toUpperCase(),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.caption,
    );
  }
}
