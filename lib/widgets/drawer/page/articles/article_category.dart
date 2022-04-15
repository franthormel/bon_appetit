import 'package:flutter/material.dart';

class DrawerPageArticleCategoryWidget extends StatelessWidget {
  final String category;

  const DrawerPageArticleCategoryWidget(
    this.category, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      category.toUpperCase(),
      style: Theme.of(context).textTheme.caption,
    );
  }
}
