import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import 'others/list.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<DatasetHomepage>(context, listen: false);

    return ArticleListWidget(
      articles: dataset.stories,
      main: true,
      title: 'What to Read',
      subtitle: 'Stories from around the world of food',
    );
  }
}
