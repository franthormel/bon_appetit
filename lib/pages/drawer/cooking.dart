import 'package:flutter/material.dart';

import '../../widgets/index.dart';
import 'article_mixin.dart';

class DrawerCookingPage extends StatelessWidget with DrawerArticlePageMixin {
  const DrawerCookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = fetchByCategory(context, category: "cooking");

    return DrawerPageWidget(
      builder: (context, i) => DrawerPageArticleWidget(articles[i]),
      count: articles.length,
      title: "Cooking",
      subHeader: "Tips, tricks and techniques",
    );
  }
}
