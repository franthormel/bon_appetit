import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../others/cached_image_progress.dart';
import '../others/category_box.dart';
import '../others/header_body/header_body_five.dart';
import 'article_details_router.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArticleDetailsRouterWidget(
      article: article,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImageProgressWidget(article.imageUrl),
          const Divider(color: Colors.transparent),
          CategoryBoxWidget(article.category),
          const Divider(color: Colors.transparent),
          HeaderFiveBodyWidget(title: article.title, body: article.subtitle),
        ],
      ),
    );
  }
}
