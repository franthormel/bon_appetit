import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../router/index.dart';
import '../../../../../services/index.dart';
import '../../../others/black_text_button.dart';

class SearchPageFiltersActionApplyWidget extends StatelessWidget {
  const SearchPageFiltersActionApplyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlackTextButtonWidget(
      text: "APPLY",
      onPressed: () {
        Provider.of<SearchProvider>(context, listen: false).searchForResults();
        Provider.of<RouteProvider>(context, listen: false).pop();
      },
      width: 130.0,
      height: 38.0,
    );
  }
}
