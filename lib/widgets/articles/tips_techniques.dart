import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../designed_container.dart';
import '../header_section.dart';
import 'article.dart';

class TipsTechniquesWidget extends StatelessWidget {
  const TipsTechniquesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);

    return DesignedContainerWidget(
      child: Column(
        children: [
          const HeaderSectionWidget(
            title: 'Cooking Tips & Techniques',
            subtitle: "Level up your kitchen skills",
          ),
          const Divider(color: Colors.transparent),
          ArticleWidget(article: dataset.tips[0]),
          const Divider(color: Colors.transparent),
          ArticleWidget(article: dataset.tips[1]),
          const Divider(color: Colors.transparent),
          ArticleWidget(article: dataset.tips[2]),
          const Divider(color: Colors.transparent),
          ArticleWidget(article: dataset.tips[3]),
          const Divider(color: Colors.transparent),
          ArticleWidget(article: dataset.tips[4]),
          const Divider(color: Colors.transparent),
          ArticleWidget(article: dataset.tips[5]),
          const Divider(color: Colors.transparent),
          ArticleWidget(article: dataset.tips[6]),
          const Divider(color: Colors.transparent),
          ArticleWidget(article: dataset.tips[7]),
        ],
      ),
    );
  }
}
