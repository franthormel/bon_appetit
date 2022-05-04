import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../router/index.dart';
import '../../../../../services/index.dart';
import '../../../../../style/index.dart';
import 'button.dart';

class SearchPageFiltersActionApplyWidget extends StatelessWidget {
  const SearchPageFiltersActionApplyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchPageFiltersActionButtonWidget(
      text: "APPLY",
      onPressed: () {
        Provider.of<SearchProvider>(context, listen: false).searchForResults();
        Provider.of<RouteProvider>(context, listen: false).pop();
      },
      backgroundColor: BonAppetitColors.black,
      textColor: BonAppetitColors.white,
    );
  }
}
