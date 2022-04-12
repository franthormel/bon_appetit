import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../widgets/index.dart';

class DrawerRecipesPage extends StatelessWidget {
  const DrawerRecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipes = Provider.of<DatasetSource>(context, listen: false).recipes;

    // TODO: Add header to ListView (try SliverAppBar instead of ListView?)
    return ListView.separated(
      itemBuilder: (context, index) {
        if (index == 0) {
          index--;
          return const DrawerHeaderWidget("Recipes");
        }

        return ListTile(title: Text(recipes[index].title));
      },
      itemCount: recipes.length + 1,
      separatorBuilder: (context, index) => const SeparatorWidget(),
    );
  }
}
