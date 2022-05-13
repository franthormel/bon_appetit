import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../../widgets/index.dart';

class VideoDetailsPage extends StatelessWidget with DetailsContentsMixin {
  final Video video;

  const VideoDetailsPage(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsContentsWidget(
      children: children,
      padding: const EdgeInsets.only(bottom: 21.0),
      title: "Video",
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
      VideoDetailsAboutWidget(
        about: video.about,
        uploadDate: video.dateUploaded,
      ),
      VideoDetailsTranscriptWidget(transcript: video.transcript),
      if (video.credits != null && video.credits!.isNotEmpty)
        VideoDetailsCreditsWidget(credits: video.credits!),
    ];
  }
}
