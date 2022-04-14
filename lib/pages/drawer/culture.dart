import 'package:flutter/material.dart';

import '../../widgets/index.dart';
import 'article_mixin.dart';

class DrawerCulturePage extends StatelessWidget with DrawerArticlePageMixin {
  const DrawerCulturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = fetchByCategory(context, category: "culture");

    return DrawerPageWidget(
      builder: (context, index) =>
          DrawerPageArticleCultureWidget(articles[index]),
      count: articles.length,
      title: "Culture",
      subHeader: "Stories from around the world of food",
    );
  }
}
