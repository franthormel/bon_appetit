import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../router/index.dart';
import '../../../services/index.dart';
import 'item.dart';

class SearchPageListVideoWidget extends StatelessWidget {
  final Video video;

  const SearchPageListVideoWidget(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchPageListItemWidget(
      callback: () {
        FirebaseAnalyticsService.logSelectedVideo(video);
      },
      category: "VIDEO",
      imageUrl: video.imageUrl,
      hasOverlayPlayButton: true,
      heroTag: video.heroTag,
      route: VideoDetailsRoute(video: video),
      title: video.title,
    );
  }
}
