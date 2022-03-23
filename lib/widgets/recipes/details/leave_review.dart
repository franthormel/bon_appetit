import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../others/header_details.dart';
import '../../others/horizontal_padding.dart';

class RecipeDetailsLeaveReviewWidget extends StatelessWidget {
  const RecipeDetailsLeaveReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: HeaderDetailsWidget(
        text: "Leave a Review",
        includeDivider: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            // TODO Once there is a login feature implement an actual text-box input with the same design as this one
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
