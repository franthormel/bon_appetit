import 'package:flutter/material.dart';

import '../../models/index.dart';
import 'article_category.dart';
import '../../widgets/cached_image_progress.dart';
import '../../widgets/designed_container.dart';

class OtherArticleWidget extends StatelessWidget {
  final OtherArticle article;

  const OtherArticleWidget({
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
          const Divider(color: Colors.transparent),
          ArticleCategoryWidget(category: article.category),
          const Divider(color: Colors.transparent),
          // TODO Style title
          Text(article.title),
          const Divider(color: Colors.transparent),
          // TODO Style subtitle
          Text(article.subtitle),
        ],
      ),
    );
  }
}
