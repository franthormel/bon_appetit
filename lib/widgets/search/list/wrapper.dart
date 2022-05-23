import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/list_item_entry/article.dart';
import '../../others/list_item_entry/recipe.dart';
import '../../others/list_item_entry/video.dart';

class SearchPageListWrapperWidget extends StatelessWidget {
  final SearchResult result;

  const SearchPageListWrapperWidget(this.result, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (result.type == ContentType.recipe) {
      return ListItemEntryRecipeWidget(result.data as Recipe);
    }

    if (result.type == ContentType.article) {
      return ListItemEntryArticleWidget(result.data as Article);
    }

    if (result.type == ContentType.video) {
      return ListItemEntryVideoWidget(result.data as Video);
    }

    return const ListTile(title: Text("Result"));
  }
}
