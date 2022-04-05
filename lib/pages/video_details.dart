import 'package:flutter/material.dart';

import '../models/index.dart';
import '../widgets/index.dart';

class VideoDetailsPage extends StatelessWidget with DetailsContentsMixin {
  final VideoEntry video;

  const VideoDetailsPage(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsContentsWidget(
      children: children,
      padding: const EdgeInsets.only(bottom: 21.0),
    );
  }

  @override
  List<Widget> get children {
    return [
      VideoDetailsImageWidget(
        heroTag: video.heroTag,
        imageUrl: video.imageUrl,
        title: video.title,
      ),
      if (video.episode != null && video.season != null && video.series != null)
        VideoEntryInfoWidget(
          episode: video.episode!,
          season: video.season!,
          series: video.series!,
        ),
      DetailsTitleWidget(video.title, textAlign: TextAlign.left),
      VideoDetailsAboutCreditsWidget(
        about: video.about,
        credits: video.credits,
      ),
      VideoDetailsReleasedDateWidget(uploadDate: video.uploadDate),
      const VideoDetailsTranscriptWidget(),
    ];
  }
}
