import 'package:flutter/material.dart';

import 'title.dart';

class SearchPageActionFilterDialogWidget extends StatelessWidget {
  const SearchPageActionFilterDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          SearchPageActionFilterDialogTitleWidget(),
        ],
      ),
    );
  }
}
