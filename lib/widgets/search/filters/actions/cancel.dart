import 'package:flutter/material.dart';

import '../../../../../style/index.dart';
import 'button.dart';

class SearchFiltersActionCancelWidget extends StatelessWidget {
  const SearchFiltersActionCancelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchFiltersActionButtonWidget(
      text: "CANCEL",
      callback: () {
        // TODO: Delete all selected values from checkboxes on SearchProvider
      },
      backgroundColor: BonAppetitColors.white,
      borderColor: BonAppetitColors.black,
    );
  }
}
