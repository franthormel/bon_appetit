import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../style/colors.dart';
import '../shared/designed_container.dart';
import '../shared/header_section.dart';
import 'video.dart';

class VideoListWidget extends StatelessWidget {
  const VideoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);
    final videos = dataset.videos;

    return DesignedContainerWidget(
      color: BonAppetitColors.black,
      child: Column(
        children: [
          const SizedBox(height: 25.0),
          const HeaderSectionWidget(
            title: 'What to Watch',
            subtitle: 'Food shows so good you can almost taste them',
            color: BonAppetitColors.white,
          ),
          const SizedBox(height: 35.0),
          SizedBox(
            height: 300.0,
            child: ListView.separated(
              itemCount: videos.length,
              itemBuilder: (context, index) =>
                  VideoEntryWidget(video: videos[index]),
              primary: false,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 18.0),
            ),
          ),
          const Divider(color: Colors.transparent),
          OutlinedButton(
            onPressed: () {},
            child: const Text('SEE MORE VIDEOS'),
          ),
        ],
      ),
    );
  }
}
