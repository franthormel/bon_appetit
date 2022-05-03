import 'package:flutter/material.dart';

import 'apply.dart';
import 'cancel.dart';

class SearchPageFiltersButtonsWidget extends StatelessWidget {
  const SearchPageFiltersButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SearchPageFiltersActionApplyWidget(),
        SizedBox(width: 10.0),
        SearchPageFiltersActionCancelWidget(),
      ],
    );
  }
}
