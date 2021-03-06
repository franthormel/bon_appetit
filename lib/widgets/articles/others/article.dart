import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../router/index.dart';
import '../../../services/index.dart';
import '../../others/cached_hero_image.dart';
import '../../others/category_box.dart';
import '../../others/header_body/five.dart';
import '../../others/page_route_pusher.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageRoutePusherWidget(
      callback: () {
        FirebaseAnalyticsService.logSelectedArticle(article);
      },
      route: ArticleDetailsRoute(article: article),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedHeroImageWidget(
            heroTag: article.heroTag,
            imageUrl: article.imageUrl,
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
