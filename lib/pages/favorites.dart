import 'package:flutter/material.dart';

import '../widgets/index.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: (FavoritesProvider) Put list of favorite recipes, articles, and videos here.
    return ScaffoldedWillPopWidget(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: const Text("Favorites here"),
    );
  }
}
