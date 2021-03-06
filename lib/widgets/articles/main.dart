import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../../router/index.dart';
import '../../services/index.dart';
import '../../style/index.dart';
import '../others/cached_hero_image.dart';
import '../others/header_body/four.dart';
import '../others/page_route_pusher.dart';

class MainStoryWidget extends StatelessWidget {
  final Article article;

  const MainStoryWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageRoutePusherWidget(
      callback: () {
        FirebaseAnalyticsService.logSelectedArticle(article);
      },
      route: ArticleDetailsRoute(article: article),
      child: Column(
        children: [
          CachedHeroImageWidget(
            heroTag: article.heroTag,
            imageUrl: article.imageUrl,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              top: 30.0,
              bottom: 50.0,
            ),
            color: BonAppetitColors.mediumChampagne,
            child: HeaderBodyFourWidget(
              title: article.title,
              body: article.subtitle,
            ),
          )
        ],
      ),
    );
  }
}
