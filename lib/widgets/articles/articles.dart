import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../designed_container.dart';
import '../header_section.dart';
import 'article_main.dart';
import 'article_other.dart';

class ArticlesWidget extends StatelessWidget {
  const ArticlesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);

    return DesignedContainerWidget(
      child: Column(
        children: [
          MainArticleWidget(article: dataset.articles.main),
          const SizedBox(height: 64.0),
          const HeaderSectionWidget(
            title: 'What to Read',
            subtitle: 'Stories from around the world of food',
          ),
          const SizedBox(height: 32.0),
          OtherArticleWidget(article: dataset.articles.others[0]),
          const Divider(color: Colors.transparent),
          OtherArticleWidget(article: dataset.articles.others[1]),
          const Divider(color: Colors.transparent),
          OtherArticleWidget(article: dataset.articles.others[2]),
          const Divider(color: Colors.transparent),
          OtherArticleWidget(article: dataset.articles.others[3]),
        ],
      ),
    );
  }
}
