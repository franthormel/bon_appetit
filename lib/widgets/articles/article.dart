import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../cached_image_progress.dart';
import '../designed_container.dart';
import '../header_body.dart';
import 'article_category.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget({
    required this.article,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesignedContainerWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImageProgressWidget(imageUrl: article.imageUrl),
          ...?otherArticleCategory,
          const Divider(color: Colors.transparent),
          HeaderBodyWidget(title: article.title, body: article.subtitle),
        ],
      ),
    );
  }

  List<Widget>? get otherArticleCategory {
    if (article.runtimeType == OtherArticle) {
      final otherArticle = article as OtherArticle;

      return [
        const Divider(color: Colors.transparent),
        ArticleCategoryWidget(category: otherArticle.category),
      ];
    }

    return null;
  }
}
