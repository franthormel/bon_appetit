import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import '../../../../router/index.dart';
import '../../../../services/index.dart';
import '../../../../style/index.dart';
import '../../../others/cached_hero_image.dart';
import '../../../others/header_body/five.dart';
import '../../../others/page_route_pusher.dart';
import '../padding.dart';
import 'category.dart';

class DrawerPageArticleWidget extends StatelessWidget {
  final Article article;

  const DrawerPageArticleWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final indent = MediaQuery.of(context).size.width / 1.5;

    return DrawerPagePaddingWidget(
      child: PageRoutePusherWidget(
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
            DrawerPageArticleCategoryWidget(article.category),
            const Divider(color: Colors.transparent),
            HeaderBodyFiveWidget(
              title: article.title,
              body: article.subtitle,
              dividerColor: BonAppetitColors.black,
              dividerEndIndent: indent,
            ),
            const SizedBox(height: 40.0),
            const Divider(),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
