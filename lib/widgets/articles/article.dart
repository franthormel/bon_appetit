import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../shared/cached_image_progress.dart';
import '../shared/header_body/five.dart';
import 'stories/story_category.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget({
    required this.article,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedImageProgressWidget(imageUrl: article.imageUrl),
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
        StoryCategoryWidget(category: otherArticle.category),
      ];
    }

    return null;
  }
}
