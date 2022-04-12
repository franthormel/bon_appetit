import 'package:flutter/material.dart';

class DrawerPageRecipeDescriptionWidget extends StatelessWidget {
  final String description;

  const DrawerPageRecipeDescriptionWidget(
    this.description, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Description");
  }
}
