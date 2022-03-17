import 'package:flutter/material.dart';

import '../models/index.dart';
import '../widgets/index.dart';

class RecipeDetailsPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailsPage(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopWidget(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Text(recipe.title),
        ),
      ),
    );
  }
}
