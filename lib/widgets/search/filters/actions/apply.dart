import 'package:flutter/material.dart';

import '../../../../../style/index.dart';
import 'button.dart';

class SearchFiltersActionApplyWidget extends StatelessWidget {
  const SearchFiltersActionApplyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchFiltersActionButtonWidget(
      text: "APPLY",
      callback: () {
        // TODO: Implement on SearchProvider
      },
      backgroundColor: BonAppetitColors.black,
      textColor: BonAppetitColors.white,
    );
  }
}
