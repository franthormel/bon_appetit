import 'package:flutter/material.dart';

import '../../../models/index.dart';
import 'item.dart';

class SearchPageListVideoWidget extends StatelessWidget {
  final Video video;

  const SearchPageListVideoWidget(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchPageListItemWidget(
      category: "VIDEO",
      imageUrl: video.imageUrl,
      title: video.title,
    );
  }
}
