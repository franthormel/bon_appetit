import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../../style/colors.dart';
import '../cached_image_progress.dart';

class VideoEntryWidget extends StatelessWidget {
  final VideoEntry video;

  const VideoEntryWidget({
    required this.video,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CachedImageProgressWidget(imageUrl: video.imageUrl),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  bottom: 10.0,
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.play_arrow,
                    size: 45.0,
                  ),
                  backgroundColor: BonAppetitColors.black.withOpacity(.75),
                ),
              ),
            ],
          ),
          const Divider(color: Colors.transparent),
          if (video.series != null)
            Text(
              video.series!.toUpperCase(),
              style: Theme.of(context).textTheme.caption,
            ),
          Text(
            video.title,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.apply(color: BonAppetitColors.white),
          ),
        ],
      ),
    );
  }
}