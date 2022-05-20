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
    if (result.type == ContentType.recipe) {
      return SearchPageListRecipeWidget(result.data as Recipe);
    }

    if (result.type == ContentType.article) {
      return SearchPageListArticleWidget(result.data as Article);
    }

    if (result.type == ContentType.video) {
      return SearchPageListVideoWidget(result.data as Video);
    }

    return const ListTile(title: Text("Result"));
  }
}
