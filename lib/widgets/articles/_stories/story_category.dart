import 'package:flutter/material.dart';

import '../../../style/colors.dart';

class StoryCategoryWidget extends StatelessWidget {
  final String category;

  const StoryCategoryWidget({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        category.toUpperCase(),
        style: Theme.of(context).textTheme.subtitle2?.apply(
              color: BonAppetitColors.white,
            ),
      ),
      color: BonAppetitColors.black,
    );
  }
}