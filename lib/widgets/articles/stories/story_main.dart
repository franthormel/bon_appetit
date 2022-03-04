import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../style/colors.dart';
import '../../others/cached_image_progress.dart';
import '../../others/header_body/header_body_four.dart';

class MainStoryWidget extends StatelessWidget {
  final Article article;

  const MainStoryWidget({
    required this.article,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedImageProgressWidget(imageUrl: article.imageUrl),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            top: 30.0,
            bottom: 50.0,
          ),
          color: BonAppetitColors.mediumChampagne,
          child: HeaderFourBodyWidget(
            title: article.title,
            body: article.subtitle,
          ),
        )
      ],
    );
  }
}
