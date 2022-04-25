import 'package:bon_appetit/router/index.dart';
import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../../style/index.dart';
import '../others/cached_hero_image.dart';
import '../others/page_route_pusher.dart';

class VideoEntryWidget extends StatelessWidget {
  final Video video;

  const VideoEntryWidget(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageRoutePusherWidget(
      route: VideoDetailsRoute(video: video),
      child: SizedBox(
        width: 300.0,
        height: 150.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CachedHeroImageWidget(
                  heroTag: video.heroTag,
                  imageUrl: video.imageUrl,
                  aspectRatio: const ImageAspectRatio(x: 2, y: 1),
                  isDark: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                  child: FloatingActionButton.small(
                    onPressed: () {},
                    child: const Icon(Icons.play_arrow),
                    backgroundColor: Theme.of(context)
                        .floatingActionButtonTheme
                        .backgroundColor
                        ?.withOpacity(0.75),
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.transparent),
            if (video.series != null)
              Text(
                video.series!.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: BonAppetitColors.sizzlingSunrise),
              ),
            Text(
              video.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.apply(color: BonAppetitColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
