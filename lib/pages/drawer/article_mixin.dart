import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';

mixin DrawerArticlePageMixin {
  /// Fetches articles by data based on the given [category]
  /// Examples of category values are:
  /// * cooking
  /// * culture
  /// * restaurants
  /// * shopping
  List<Article> fetchByCategory(BuildContext context, {String category = ""}) {
    final provider = Provider.of<DatasetSource>(context, listen: false);
    final articles = provider.articles;

    return category.isNotEmpty
        ? articles.where((article) {
            return article.category.toLowerCase() == category.toLowerCase();
          }).toList()
        : articles;
  }
}
