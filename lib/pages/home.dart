import 'package:flutter/material.dart';

import '../style/colors.dart';
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
        itemBuilder: (context, index) => children[index],
        separatorBuilder: (context, index) => const SizedBox(height: 14.0),
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
