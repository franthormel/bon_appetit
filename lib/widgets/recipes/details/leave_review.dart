import 'package:flutter/material.dart';

import '../../../style/index.dart';
import '../../others/header_details.dart';
import '../../others/horizontal_padding.dart';

class RecipeDetailsLeaveReviewWidget extends StatelessWidget {
  const RecipeDetailsLeaveReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: HeaderDetailsWidget(
        header: "Leave a Review",
        hasDivider: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: BonAppetitColors.platinum),
            ),
            height: 60.0,
            padding: const EdgeInsets.all(15.0),
            width: double.infinity,
            child: Text(
              "Tell us what you think",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: BonAppetitColors.dimGray,
                    letterSpacing: -0.5,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
