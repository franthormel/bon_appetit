import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../router/index.dart';
import '../../../../../services/index.dart';
import '../../../../../style/index.dart';
import '../../../others/black_text_button.dart';

class SearchPageFiltersActionCancelWidget extends StatelessWidget {
  const SearchPageFiltersActionCancelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlackTextButtonWidget(
      text: "CANCEL",
      backgroundColor: BonAppetitColors.white,
      borderColor: BonAppetitColors.black,
      foregroundColor: BonAppetitColors.black,
      onPressed: () {
        Provider.of<SearchProvider>(context, listen: false).resetTempFilters();
        Provider.of<RouteProvider>(context, listen: false).pop();
      },
      width: 130.0,
    );
  }
}
