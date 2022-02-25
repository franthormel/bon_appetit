import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../article.dart';

class OtherStoryWidget extends StatelessWidget {
  final CategorizedArticle article;

  const OtherStoryWidget({
    required this.article,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArticleWidget(article: article);
  }
}
