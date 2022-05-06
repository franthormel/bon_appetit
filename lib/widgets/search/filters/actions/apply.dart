import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../router/index.dart';
import '../../../../../services/index.dart';

class SearchPageFiltersActionApplyWidget extends StatelessWidget {
  const SearchPageFiltersActionApplyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Size and border radius
    return ElevatedButton(
      child: const Text("APPLY"),
      onPressed: () {
        Provider.of<SearchProvider>(context, listen: false).searchForResults();
        Provider.of<RouteProvider>(context, listen: false).pop();
      },
    );
  }
}
