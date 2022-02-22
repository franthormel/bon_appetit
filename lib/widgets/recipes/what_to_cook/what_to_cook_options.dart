import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../services/app_state.dart';
import 'what_to_cook_option.dart';

class WhatToCookOptionsWidget extends StatelessWidget {
  final void Function()? onSelected;

  const WhatToCookOptionsWidget({
    this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Wrap(
      spacing: 8.0,
      children: RecipeOptions.suggestedOptions.map((option) {
        return WhatToCookOptionWidget(
          label: option,
          selected: appState.optionIsWhatToCook(option),
          onSelected: (selected) {
            appState.changeOptionWhatToCook(option);

            if (onSelected != null) {
              onSelected!();
            }
          },
        );
      }).toList(),
    );
  }
}
