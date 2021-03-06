import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/designed_container.dart';
import '../../others/header_section.dart';
import '../main.dart';
import 'article.dart';

class ArticleListWidget extends StatelessWidget {
  final List<Article> articles;
  final String title;
  final String subtitle;
  final bool main;

  const ArticleListWidget({
    required this.articles,
    required this.title,
    required this.subtitle,
    this.main = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesignedContainerWidget(
      child: Column(
        children: [
          ...?articleHeaderWidget,
          HeaderSectionWidget(title: title, subtitle: subtitle),
          ...articleEntryWidgets,
        ],
      ),
    );
  }

  List<Widget>? get articleHeaderWidget {
    if (main && articles.isNotEmpty) {
      return [
        MainStoryWidget(articles[0]),
        const SizedBox(height: 70.0),
      ];
    }

    return null;
  }

  List<Widget> get articleEntryWidgets {
    final widgets = <Widget>[];
    final entries = articleEntries;

    for (final article in entries) {
      widgets.addAll([
        const SizedBox(height: 50.0),
        ArticleWidget(article),
      ]);
    }

    return widgets;
  }

  List<Article> get articleEntries {
    List<Article> entries = articles;

    if (articles.length > 1 && main) {
      entries = articles.sublist(1);
    }

    return entries;
  }
}
