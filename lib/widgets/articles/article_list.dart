import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../../widgets/others/designed_container.dart';
import '../../widgets/others/header_section.dart';
import 'article.dart';
import 'stories/story_main.dart';

class ArticleListWidget extends StatelessWidget {
  final List<Article> articles;
  final Article? articleHeader;

  final String title;
  final String subtitle;

  const ArticleListWidget({
    required this.articles,
    required this.title,
    required this.subtitle,
    this.articleHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesignedContainerWidget(
      child: Column(
        children: [
          ...?articleHeaderEntry,
          HeaderSectionWidget(title: title, subtitle: subtitle),
          ...articleEntries,
        ],
      ),
    );
  }

  List<Widget>? get articleHeaderEntry {
    if (articleHeader != null) {
      return [
        MainStoryWidget(article: articleHeader!),
        const SizedBox(height: 70.0),
      ];
    }

    return null;
  }

  List<Widget> get articleEntries {
    final widgets = <Widget>[];

    for (final article in articles) {
      widgets.addAll([
        const SizedBox(height: 50.0),
        ArticleWidget(article: article),
      ]);
    }

    return widgets;
  }
}
