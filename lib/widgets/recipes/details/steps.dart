import 'package:flutter/material.dart';

import '../../others/header_details.dart';
import '../../others/horizontal_padding.dart';
import 'others/step.dart';

class RecipeDetailsStepsWidget extends StatelessWidget {
  final List<String> steps;

  const RecipeDetailsStepsWidget(this.steps, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: HeaderDetailsWidget(
        text: "Preparation",
        child: Column(children: children),
      ),
    );
  }

  List<Widget> get children {
    final widgets = <Widget>[];

    for (int i = 0; i < steps.length; i++) {
      widgets.addAll([
        if (i > 0) const SizedBox(height: 30.0),
        RecipeDetailStepWidget(number: i + 1, step: steps[i]),
      ]);
    }

    return widgets;
  }
}
