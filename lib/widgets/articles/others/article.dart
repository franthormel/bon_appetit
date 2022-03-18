import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/cached_image.dart';
import '../../others/category_box.dart';
import '../../others/header_body/five.dart';
import 'details.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArticleDetailsWidget(
      article: article,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImageWidget(
            imageUrl: article.imageUrl,
            heroTag: article.heroTag,
          ),
          const Divider(color: Colors.transparent),
          CategoryBoxWidget(article.category),
          const Divider(color: Colors.transparent),
          HeaderBodyFiveWidget(title: article.title, body: article.subtitle),
        ],
      ),
    );
  }
}
