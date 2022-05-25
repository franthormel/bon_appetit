import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../services/index.dart';
import '../others/list_item_entry/article.dart';
import 'empty.dart';
import 'list.dart';

class FavoriteArticlesWidget extends StatelessWidget {
  const FavoriteArticlesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final source = Provider.of<DatasetSource>(context, listen: false);
    final provider = Provider.of<FavoritesProvider>(context);
    final favorites = provider.filterFavoriteArticles(source.articles);

    if (favorites.isNotEmpty) {
      return FavoritesListWidget(
        children: favorites.map((article) {
          return ListItemEntryArticleWidget(article);
        }).toList(),
      );
    }

    return const FavoritesEmptyWidget(text: "articles");
  }
}
