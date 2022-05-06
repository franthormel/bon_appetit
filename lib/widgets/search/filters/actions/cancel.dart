import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../router/index.dart';
import '../../../../../services/index.dart';

class SearchPageFiltersActionCancelWidget extends StatelessWidget {
  const SearchPageFiltersActionCancelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Make background white, primary black,
    return OutlinedButton(
      child: const Text("CANCEL"),
      onPressed: () {
        Provider.of<SearchProvider>(context, listen: false).resetTempFilters();
        Provider.of<RouteProvider>(context, listen: false).pop();
      },
    );
  }
}
