import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../cached_image_progress.dart';
import '../designed_container.dart';
import '../header_body.dart';
import 'article_category.dart';

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
          HeaderBodyWidget(title: article.title, body: article.subtitle),
        ],
      ),
    );
  }
}
