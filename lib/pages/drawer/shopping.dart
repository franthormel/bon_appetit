import 'package:flutter/material.dart';

import '../../widgets/index.dart';
import 'article_mixin.dart';

class DrawerShoppingPage extends StatelessWidget with DrawerArticlePageMixin {
  const DrawerShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = fetchByCategory(context, category: "shopping");

    return DrawerPageWidget(
      builder: (context, index) => Container(),
      count: articles.length,
      title: "Shopping",
      subHeader: "We just love these",
    );
  }
}
