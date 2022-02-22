import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/index.dart';
import '../../../../services/app_state.dart';
import 'horizontal_list_option.dart';

class HorizontalListOptionsWidget extends StatelessWidget {
  final void Function()? onSelected;

  const HorizontalListOptionsWidget({
    this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Wrap(
      spacing: 8.0,
      children: RecipeOptions.suggestedOptions.map((option) {
        return HorizontalListOptionWidget(
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
