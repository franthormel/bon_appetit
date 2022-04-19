import 'package:flutter/material.dart';

import '../style/index.dart';
import '../widgets/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.white,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: children.length,
        itemBuilder: (context, i) => children[i],
        separatorBuilder: (context, i) => const SizedBox(height: 15.0),
      ),
    );
  }

  List<Widget> get children {
    return const [
      MainRecipesWidget(),
      SuggestedRecipesWidget(),
      StoriesWidget(),
      TrendingRecipesWidget(),
      VideoListWidget(),
      ShoppingArticlesWidget(),
      CookingArticlesWidget(),
    ];
  }
}
