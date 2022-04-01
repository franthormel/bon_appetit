import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../../router/index.dart';
import '../../style/colors.dart';
import '../others/cached_hero_image.dart';
import '../others/header_body/four.dart';
import '../others/inkwell_route_pusher.dart';

class MainStoryWidget extends StatelessWidget {
  final Article article;

  const MainStoryWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkwellRoutePusher(
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
