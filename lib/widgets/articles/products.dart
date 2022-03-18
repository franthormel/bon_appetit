import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import 'others/list.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<DatasetHomepage>(context, listen: false);

    return ArticleListWidget(
      articles: dataset.products,
      title: 'We Just Love These',
      subtitle: "All the stuff you need—and some you don't",
    );
  }
}
