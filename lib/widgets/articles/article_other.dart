import 'package:flutter/material.dart';

import '../../models/index.dart';

class OtherArticleWidget extends StatelessWidget {
  final OtherArticle article;

  const OtherArticleWidget({
    required this.article,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO Finish this
    return Column(
      children: [
        Text(article.title),
      ],
    );
  }
}
