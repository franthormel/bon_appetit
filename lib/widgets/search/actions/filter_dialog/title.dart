import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'text.dart';

class SearchPageActionFilterDialogTitleWidget extends StatelessWidget {
  const SearchPageActionFilterDialogTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FilterDialogTextWidget("REFINE RESULTS"),
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
