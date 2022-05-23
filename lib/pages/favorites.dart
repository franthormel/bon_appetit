import 'package:flutter/material.dart';

import '../widgets/index.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: ScaffoldedWillPopWidget(
        appBar: AppBar(
          title: const Text("Favorites"),
          bottom: const TabBar(
            tabs: [
              Tab(child: Text("Recipes")),
              Tab(child: Text("Articles")),
              Tab(child: Text("Videos")),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FavoriteRecipesWidget(),
            FavoriteArticlesWidget(),
            FavoriteVideosWidget(),
          ],
        ),
      ),
    );
  }
}
