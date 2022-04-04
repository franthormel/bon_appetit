import 'package:flutter/material.dart';

import '../models/index.dart';
import '../widgets/index.dart';

class VideoDetailsPage extends StatelessWidget with DetailsContentsMixin {
  final VideoEntry video;

  const VideoDetailsPage(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsContentsWidget(children: children);
  }

  @override
  List<Widget> get children {
    return [
      const VideoDetailsImageWidget(),
      DetailsTitleWidget(video.title, textAlign: TextAlign.left),
      const VideoEntryInfoWidget(),
      const VideoDetailsAboutCreditsWidget(),
      const VideoDetailsReleasedDateWidget(),
      const VideoDetailsTranscriptWidget(),
    ];
  }
}
