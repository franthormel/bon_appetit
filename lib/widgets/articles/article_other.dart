import 'package:flutter/material.dart';

import '../../models/index.dart';
import 'article.dart';

class OtherArticleWidget extends StatelessWidget {
  final OtherArticle article;

  const OtherArticleWidget({
    required this.article,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArticleWidget(article: article);
  }
}
