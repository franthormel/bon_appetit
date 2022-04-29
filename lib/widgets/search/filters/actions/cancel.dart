import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../services/index.dart';
import '../../../../../style/index.dart';
import 'button.dart';

class SearchFiltersActionCancelWidget extends StatelessWidget {
  const SearchFiltersActionCancelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchFiltersActionButtonWidget(
      text: "CANCEL",
      onPressed: () {
        Provider.of<SearchProvider>(context, listen: false)
            .clearSearchFilters();
      },
      backgroundColor: BonAppetitColors.white,
      borderColor: BonAppetitColors.black,
    );
  }
}
