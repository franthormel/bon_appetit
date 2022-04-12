import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../widgets/index.dart';

class DrawerRecipesPage extends StatelessWidget {
  const DrawerRecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: PASS
    final recipes = Provider.of<DatasetSource>(context, listen: false).recipes;

    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: DrawerHeaderWidget("Recipes")),
        // TODO: PASS
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              // TODO: PASS
              return DrawerPageRecipeWidget(recipes[index]);
            },
            childCount: recipes.length,
          ),
        ),
      ],
    );
  }
}
