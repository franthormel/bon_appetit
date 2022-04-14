import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import '../../../../router/index.dart';
import '../../../others/cached_hero_image.dart';
import '../../../others/page_route_pusher.dart';
import 'culture_box.dart';

class DrawerPageCultureWidget extends StatelessWidget {
  final Article article;

  const DrawerPageCultureWidget(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: PageRoutePusherWidget(
        route: ArticleDetailsRoute(article: article),
        child: Column(
          children: [
            CachedHeroImageWidget(
              heroTag: article.heroTag,
              imageUrl: article.imageUrl,
            ),
            DrawerPageCultureBoxWidget(article.title),
          ],
        ),
      ),
    );
  }
}
