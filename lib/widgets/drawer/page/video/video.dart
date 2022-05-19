import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import '../../../../router/index.dart';
import '../../../../services/index.dart';
import '../../../others/cached_hero_image.dart';
import '../../../others/page_route_pusher.dart';
import '../padding.dart';

class DrawerPageVideoWidget extends StatelessWidget {
  final Video video;

  const DrawerPageVideoWidget(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerPagePaddingWidget(
      child: PageRoutePusherWidget(
        callback: () {
          FirebaseAnalyticsService.logSelectedVideo(video);
        },
        route: VideoDetailsRoute(video: video),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedHeroImageWidget(
              heroTag: video.heroTag,
              imageUrl: video.imageUrl,
            ),
            const Divider(color: Colors.transparent),
            Text(
              video.title,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 30.0),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
