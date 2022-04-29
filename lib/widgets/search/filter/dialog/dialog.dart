import 'package:flutter/material.dart';

import 'actions/actions.dart';
import 'list.dart';

class SearchPageFilterDialogWidget extends StatelessWidget {
  const SearchPageFilterDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPageFilterDialogListWidget(),
      bottomNavigationBar: FilterDialogActionsWidget(),
    );
  }
}
