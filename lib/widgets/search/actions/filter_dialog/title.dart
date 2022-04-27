import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'header.dart';

class SearchPageActionFilterDialogTitleWidget extends StatelessWidget {
  const SearchPageActionFilterDialogTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FilterDialogHeaderWidget("REFINE RESULTS"),
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
