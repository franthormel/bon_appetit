import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../widgets/index.dart';

class DrawerVideosPage extends StatelessWidget {
  const DrawerVideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final videos = Provider.of<DatasetSource>(context, listen: false).videos;

    return DrawerPageWidget(
      builder: (context, i) => DrawerPageVideoWidget(videos[i]),
      count: videos.length,
      title: "Videos",
    );
  }
}
