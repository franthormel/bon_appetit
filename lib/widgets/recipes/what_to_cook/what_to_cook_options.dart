import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../services/app_state.dart';
import 'what_to_cook_option.dart';

class WhatToCookOptionsWidget extends StatefulWidget {
  const WhatToCookOptionsWidget({Key? key}) : super(key: key);

  @override
  State<WhatToCookOptionsWidget> createState() =>
      _WhatToCookOptionsWidgetState();
}

class _WhatToCookOptionsWidgetState extends State<WhatToCookOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    final recipeDataset = Provider.of<HomepageDataset>(context, listen: false);
    final appState = Provider.of<AppState>(context);

    return Wrap(
      spacing: 8.0,
      children: chipOptions(recipeDataset, appState),
    );
  }

  /// Returns an array of [WhatToCookOptionWidget].
  /// * Place this inside a [Wrap] widget.
  /// * [WhatToCookOptionsWidget] has to call [setState()]
  /// here that's why a utility widget method is being used.
  List<Widget> chipOptions(HomepageDataset dataset, AppState appState) {
    return dataset.recipes.suggestedTags.map((option) {
      return WhatToCookOptionWidget(
        label: option,
        selected: appState.optionIsWhatToCook(option),
        onSelected: (selected) {
          appState.changeOptionWhatToCook(option);
        },
      );
    }).toList();
  }
}
