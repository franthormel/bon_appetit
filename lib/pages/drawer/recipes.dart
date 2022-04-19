import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../widgets/index.dart';

class DrawerRecipesPage extends StatelessWidget {
  const DrawerRecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipes = Provider.of<DatasetSource>(context, listen: false).recipes;

    return DrawerPageWidget(
      builder: (context, i) => DrawerPageRecipeWidget(recipes[i]),
      count: recipes.length,
      title: "Recipes",
    );
  }
}
