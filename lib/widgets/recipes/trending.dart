import 'package:flutter/material.dart';

import '../../models/index.dart';
import 'others/horizontal_list/horizontal_list.dart';

class TrendingRecipesWidget extends StatelessWidget {
  const TrendingRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HorizontalListRecipesWidget(
      subtitle: 'These recipes are hot, hot, hot',
      title: 'Trending Now',
      type: RecipeList.trending,
    );
  }
}
