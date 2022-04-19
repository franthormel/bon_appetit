import 'package:flutter/material.dart';

import '../../style/index.dart';
import 'controls.dart';
import 'list.dart';
import 'text_field.dart';

class SearchPageContentWidget extends StatelessWidget {
  const SearchPageContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.cultured,
      child: Column(
        children: const [
          SearchPageTextFieldWidget(),
          SearchPageControlsWidget(),
          SearchPageListWidget(),
        ],
      ),
    );
  }
}
