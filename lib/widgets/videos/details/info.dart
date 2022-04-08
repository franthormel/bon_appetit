import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';

class VideoEntryInfoWidget extends StatelessWidget {
  final String series;
  final String season;
  final String episode;

  const VideoEntryInfoWidget({
    required this.episode,
    required this.season,
    required this.series,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Text(
        "$series | SEASON $season | EPISODE $episode".toUpperCase(),
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
