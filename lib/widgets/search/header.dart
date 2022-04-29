import 'package:flutter/material.dart';

import '../../../style/index.dart';
import 'filters/button.dart';
import 'text_field.dart';

class SearchPageHeaderWidget extends StatelessWidget {
  const SearchPageHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.white,
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        alignment: Alignment.centerRight,
        children: const [
          SearchPageTextFieldWidget(),
          SearchPageFiltersButtonWidget(),
        ],
      ),

      // TODO: Show search recipe filters here as squared chips inside Wrap
    );
  }
}
