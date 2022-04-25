import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../router/index.dart';
import 'item.dart';

class SearchPageListArticleWidget extends StatelessWidget {
  final Article article;

  const SearchPageListArticleWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchPageListItemWidget(
      category: article.category,
      imageUrl: article.imageUrl,
      heroTag: article.heroTag,
      route: ArticleDetailsRoute(article: article),
      title: article.title,
    );
  }
}
