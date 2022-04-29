import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'header.dart';

class SearchPageFiltersDialogTitleWidget extends StatelessWidget {
  const SearchPageFiltersDialogTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SearchPageFiltersDialogHeaderWidget("REFINE RESULTS"),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
