import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import '../../../style/index.dart';
import 'header.dart';

class SearchPageFiltersTitleWidget extends StatelessWidget {
  const SearchPageFiltersTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SearchPageFiltersHeaderWidget("REFINE RESULTS"),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Provider.of<RouteProvider>(context, listen: false).pop();
              },
            ),
          ],
        ),
        const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
