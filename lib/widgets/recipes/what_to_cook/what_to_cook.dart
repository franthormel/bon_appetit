import 'package:flutter/material.dart';

import '../shared/horizontal_list/horizontal_list.dart';

// Suggested recipes.
// Appears below main recipes
// Second from the top.
class WhatToCookWidget extends StatelessWidget {
  const WhatToCookWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HorizontalListRecipesWidget();
  }
}

