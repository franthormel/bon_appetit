import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import 'others/list.dart';

class CookingArticlesWidget extends StatelessWidget {
  const CookingArticlesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<DatasetHomepage>(context, listen: false);

    return ArticleListWidget(
      articles: dataset.cooking,
      title: 'Cooking Tips & Techniques',
      subtitle: "Level up your kitchen skills",
    );
  }
}
