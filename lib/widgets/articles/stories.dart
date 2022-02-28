import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import 'article_list.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);

    return ArticleListWidget(
      articles: dataset.articles.others,
      articleHeader: dataset.articles.main,
      title: 'What to Read',
      subtitle: 'Stories from around the world of food',
    );
  }
}
