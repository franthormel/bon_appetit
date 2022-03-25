import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/header_details.dart';
import '../../others/horizontal_padding.dart';
import 'user_review.dart';

class RecipeDetailsUserReviewsWidget extends StatelessWidget {
  final List<RecipeReview> reviews;

  const RecipeDetailsUserReviewsWidget(
    this.reviews, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: HeaderDetailsWidget(
        text: text,
        includeDivider: false,
        child: Column(children: children),
      ),
    );
  }

  List<Widget> get children {
    final widgets = <Widget>[];

    for (final review in reviews) {
      widgets.addAll([
        if (reviews.first != review) const SizedBox(height: 10.0),
        RecipeDetailsUserReviewWidget(review),
      ]);
    }

    return widgets;
  }

  String get text => "Reviews (${reviews.length})";
}
