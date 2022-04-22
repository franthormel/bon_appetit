import 'package:flutter/material.dart';

import '../../../models/index.dart';
import 'article.dart';
import 'recipe.dart';
import 'video.dart';

class SearchPageListWrapperWidget extends StatelessWidget {
  final SearchResult result;

  const SearchPageListWrapperWidget(this.result, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (result.category == SearchCategory.recipes) {
      return SearchPageListRecipeWidget(result.data as Recipe);
    } else if (result.category == SearchCategory.articles) {
      return SearchPageListArticleWidget(result.data as Article);
    } else if (result.category == SearchCategory.videos) {
      return SearchPageListVideoWidget(result.data as Video);
    }

    return const ListTile(title: Text("Result"));
  }
}
