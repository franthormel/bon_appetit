import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../router/index.dart';
import '../../../../../services/index.dart';
import '../../../../../style/index.dart';
import 'button.dart';

class SearchPageFiltersActionCancelWidget extends StatelessWidget {
  const SearchPageFiltersActionCancelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchPageFiltersActionButtonWidget(
      text: "CANCEL",
      onPressed: () {
        Provider.of<SearchProvider>(context, listen: false)
            .resetTemporaryFilters();
        Provider.of<RouteProvider>(context, listen: false).pop();
      },
      backgroundColor: BonAppetitColors.white,
      borderColor: BonAppetitColors.black,
    );
  }
}
