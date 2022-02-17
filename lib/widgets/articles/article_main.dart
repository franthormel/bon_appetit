import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../header_body.dart';
import '../cached_image_progress.dart';

import '../../style/colors.dart';

class MainArticleWidget extends StatelessWidget {
  final MainArticle article;

  const MainArticleWidget({
    required this.article,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedImageProgressWidget(imageUrl: article.imageUrl),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            top: 32.0,
            bottom: 56.0,
          ),
          color: BonAppetitColors.mediumChampagne,
          child: HeaderBodyWidget(
            title: article.title,
            body: article.subtitle,
          ),
        )
      ],
    );
  }
}
