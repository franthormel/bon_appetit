import 'package:flutter/material.dart';

import '../../../style/index.dart';
import 'filter_chips/filter_chips.dart';
import 'filters/button.dart';
import 'text_field.dart';

class SearchPageHeaderWidget extends StatelessWidget {
  const SearchPageHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: BonAppetitColors.white,
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: const [
              SearchPageTextFieldWidget(),
              SearchPageFiltersButtonWidget(),
            ],
          ),
          const SearchPageFilterChipsWidget(),
        ],
      ),

    );
  }
}
