import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../designed_container.dart';
import '../header_section.dart';

class VideoListWidget extends StatelessWidget {
  const VideoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesignedContainerWidget(
      color: BonAppetitColors.black,
      child: Column(
        children: const [
          HeaderSectionWidget(
            title: 'What to Watch',
            subtitle: 'Food shows so good you can almost taste them',
            color: BonAppetitColors.white,
          ),
        ],
      ),
    );
  }
}
