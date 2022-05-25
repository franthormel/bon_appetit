import 'package:flutter/material.dart';

import '../../style/index.dart';

class CategoryBoxWidget extends StatelessWidget {
  final String category;

  const CategoryBoxWidget(this.category, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9.0),
      color: BonAppetitColors.black,
      child: Text(
        category.toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .caption
            ?.apply(color: BonAppetitColors.white),
      ),
    );
  }
}
