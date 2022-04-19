import 'package:flutter/material.dart';

import '../../widgets/index.dart';
import 'article_mixin.dart';

class DrawerRestaurantsPage extends StatelessWidget
    with DrawerArticlePageMixin {
  const DrawerRestaurantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = fetchByCategory(context, category: "restaurants");

    return DrawerPageWidget(
      builder: (context, i) => DrawerPageArticleWidget(articles[i]),
      count: articles.length,
      title: "Restaurants",
    );
  }
}
