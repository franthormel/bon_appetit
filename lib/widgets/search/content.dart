import 'package:flutter/material.dart';

import '../../style/index.dart';
import 'controls/controls.dart';
import 'header.dart';
import 'list/list.dart';

class SearchPageContentWidget extends StatelessWidget {
  const SearchPageContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.cultured,
      child: Column(
        children: const [
          SearchPageHeaderWidget(),
          SearchPageControlsWidget(),
          SearchPageListWidget(),
        ],
      ),
    );
  }
}
