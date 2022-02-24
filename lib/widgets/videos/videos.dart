import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../style/colors.dart';
import '../designed_container.dart';
import '../header_section.dart';

class VideoListWidget extends StatelessWidget {
  const VideoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);
    final videos = dataset.videos.entries;

    return DesignedContainerWidget(
      color: BonAppetitColors.black,
      child: Column(
        children: [
          const HeaderSectionWidget(
            title: 'What to Watch',
            subtitle: 'Food shows so good you can almost taste them',
            color: BonAppetitColors.white,
          ),
          const Divider(color: Colors.transparent),
          SizedBox(
            height: 300.0,
            child: ListView.separated(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                final video = videos[index];

                return SizedBox(
                  width: 200,
                  child: Text(
                    "${video.title} ${video.series} ${video.uploadDate.toLocal()}",
                    softWrap: true,
                    maxLines: 10,
                    style: const TextStyle(color: BonAppetitColors.white),
                  ),
                );
              },
              primary: false,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
