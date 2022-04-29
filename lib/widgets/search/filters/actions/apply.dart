import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../style/index.dart';
import '../../../../../services/index.dart';
import 'button.dart';

class SearchFiltersActionApplyWidget extends StatelessWidget {
  const SearchFiltersActionApplyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchFiltersActionButtonWidget(
      text: "APPLY",
      onPressed: () {
        Provider.of<SearchProvider>(context, listen: false).searchForResults();
      },
      backgroundColor: BonAppetitColors.black,
      textColor: BonAppetitColors.white,
    );
  }
}
