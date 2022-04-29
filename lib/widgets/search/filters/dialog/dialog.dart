import 'package:flutter/material.dart';

import 'actions/actions.dart';
import 'list.dart';

class SearchPageFiltersDialogWidget extends StatelessWidget {
  const SearchPageFiltersDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPageFiltersDialogListWidget(),
      bottomNavigationBar: FiltersDialogActionsWidget(),
    );
  }
}
