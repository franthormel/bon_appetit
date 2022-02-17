import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../header_section.dart';
import 'article_other.dart';

class OtherArticlesWidget extends StatelessWidget {
  const OtherArticlesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);
    final articles = dataset.articles.others;

    return Column(
      children: [
        const HeaderSectionWidget(
          title: 'What to Read',
          subtitle: 'Stories from around the world of food',
        ),
        const Divider(color: Colors.transparent),
        OtherArticleWidget(article: articles[0]),
        const Divider(color: Colors.transparent),
        OtherArticleWidget(article: articles[1]),
        const Divider(color: Colors.transparent),
        OtherArticleWidget(article: articles[2]),
        const Divider(color: Colors.transparent),
        OtherArticleWidget(article: articles[3]),
      ],
    );
  }
}
