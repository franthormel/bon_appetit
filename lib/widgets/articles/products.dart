import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../designed_container.dart';
import '../header_section.dart';
import 'article.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);

    return DesignedContainerWidget(
      child: Column(
        children: [
          const SizedBox(height: 35.0),
          const HeaderSectionWidget(
            title: 'We Just Love These',
            subtitle: "All the stuff you need—and some you don't",
          ),
          const SizedBox(height: 35.0),
          ArticleWidget(article: dataset.products[0]),
          const SizedBox(height: 25.0),
          ArticleWidget(article: dataset.products[1]),
          const SizedBox(height: 25.0),
          ArticleWidget(article: dataset.products[2]),
          const SizedBox(height: 25.0),
          ArticleWidget(article: dataset.products[3]),
          const SizedBox(height: 25.0),
          ArticleWidget(article: dataset.products[4]),
          const SizedBox(height: 25.0),
          ArticleWidget(article: dataset.products[5]),
        ],
      ),
    );
  }
}
