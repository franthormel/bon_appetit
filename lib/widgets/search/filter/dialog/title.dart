import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'header.dart';

class SearchPageFilterDialogTitleWidget extends StatelessWidget {
  const SearchPageFilterDialogTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SearchPageFilterDialogHeaderWidget("REFINE RESULTS"),
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
