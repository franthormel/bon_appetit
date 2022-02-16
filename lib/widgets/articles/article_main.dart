import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../style/colors.dart';
import '../cached_image_progress.dart';
import '../designed_container.dart';
import '../header_body.dart';

class MainArticleWidget extends StatelessWidget {
  const MainArticleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);
    final mainArticle = dataset.articles.main;

    return DesignedContainerWidget(
      child: Column(
        children: [
          CachedImageProgressWidget(imageUrl: mainArticle.imageUrl),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 32.0,
              bottom: 56.0,
            ),
            color: BonAppetitColors.mediumChampagne,
            child: HeaderBodyWidget(
              title: mainArticle.title,
              body: mainArticle.subtitle,
            ),
          )
        ],
      ),
    );
  }
}
