import 'package:flutter/material.dart';

import '../horizontal_padding.dart';
import 'category.dart';

class DetailsCategoriesWidget extends StatelessWidget {
  final List<String> categories;
  final bool hasDivider;

  const DetailsCategoriesWidget(
    this.categories, {
    this.hasDivider = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (hasDivider)
            Column(children: const [Divider(), SizedBox(height: 10.0)]),
          Wrap(runSpacing: 10.0, spacing: 15.0, children: children),
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
