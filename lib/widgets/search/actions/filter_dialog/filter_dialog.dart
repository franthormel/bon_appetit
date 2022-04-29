import 'package:flutter/material.dart';

import 'actions/actions.dart';
import 'list.dart';

class SearchPageActionFilterDialogWidget extends StatelessWidget {
  const SearchPageActionFilterDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: const [FilterDialogListWidget(), FilterDialogActionsWidget()],
      ),
    );
  }
}
