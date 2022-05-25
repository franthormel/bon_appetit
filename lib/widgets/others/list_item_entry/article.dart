import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../router/index.dart';
import '../../../services/index.dart';
import 'list_item_entry.dart';

class ListItemEntryArticleWidget extends StatelessWidget {
  final Article article;

  const ListItemEntryArticleWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListItemEntryWidget(
      callback: () {
        FirebaseAnalyticsService.logSelectedArticle(article);
      },
      category: article.category,
      imageUrl: article.imageUrl,
      heroTag: article.heroTag,
      route: ArticleDetailsRoute(article: article),
      title: article.title,
    );
  }
}
