import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../style/index.dart';
import '../others/designed_container.dart';
import '../others/header_section.dart';
import 'button.dart';
import 'video.dart';

class VideoListWidget extends StatelessWidget {
  const VideoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<DatasetHomepage>(context, listen: false);

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
              itemCount: dataset.videos.length,
              itemBuilder: (context, i) => VideoEntryWidget(dataset.videos[i]),
              primary: false,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, i) => const SizedBox(width: 18.0),
            ),
          ),
          const Divider(color: Colors.transparent),
          const VideoButtonWidget(),
        ],
      ),
    );
  }
}
