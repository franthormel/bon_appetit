import 'package:flutter/material.dart';

import 'item.dart';
import 'text.dart';

class SearchPageActionFilterDialogTitleWidget extends StatelessWidget {
  const SearchPageActionFilterDialogTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilterDialogItemWidget(
      header: Row(
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
    );
  }
}
