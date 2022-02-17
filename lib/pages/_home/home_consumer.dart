import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../widgets/index.dart';

class HomeConsumerWidget extends StatelessWidget {
  const HomeConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.white,
      child: ListView.separated(
        primary: true,
        itemCount: children.length,
        itemBuilder: (context, index) => children[index],
        separatorBuilder: (context, index) => const SizedBox(height: 14.0),
      ),
    );
  }

  List<Widget> get children {
    return const [
      MainRecipesWidget(),
      WhatToCookWidget(),
      MainArticleWidget(),
      OtherArticlesWidget(),
    ];
  }
}
