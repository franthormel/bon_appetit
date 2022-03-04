import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../others/cached_image_progress.dart';
import '../others/header_body/header_body_five.dart';
import 'stories/story_category.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedImageProgressWidget(article.imageUrl),
        ...?otherArticleCategory,
        const Divider(color: Colors.transparent),
        HeaderFiveBodyWidget(title: article.title, body: article.subtitle),
      ],
    );
  }

  List<Widget>? get otherArticleCategory {
    if (article.runtimeType == CategorizedArticle) {
      final otherArticle = article as CategorizedArticle;

      return [
        const Divider(color: Colors.transparent),
        StoryCategoryWidget(otherArticle.category),
      ];
    }

    return null;
  }
}
