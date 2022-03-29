import 'package:flutter/material.dart';

import '../models/index.dart';
import '../widgets/index.dart';

class ArticleDetailsPage extends StatelessWidget with DetailsContentsMixin {
  final Article article;

  const ArticleDetailsPage(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsContentsWidget(children: children);
  }

  @override
  List<Widget> get children {
    return [
      Text(article.title)
    ];
  }
}
