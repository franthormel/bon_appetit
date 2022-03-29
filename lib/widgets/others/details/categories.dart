import 'package:flutter/material.dart';

import '../horizontal_padding.dart';
import 'category.dart';

class DetailsCategoriesWidget extends StatelessWidget {
  final List<String> categories;

  const DetailsCategoriesWidget(
    this.categories, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(children: children, spacing: 15.0, runSpacing: 10.0),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  List<DetailsCategoryWidget> get children {
    // A greyed-out Text with 'Explore Bon Appétit'
    // at the start of all tags is always shown
    final widgets = <DetailsCategoryWidget>[
      const DetailsCategoryWidget("Explore Bon Appétit", isGray: true)
    ];

    // Includes the rest of the categories
    widgets.addAll(categories.map<DetailsCategoryWidget>(
        (category) => DetailsCategoryWidget(category)));

    return widgets;
  }
}
