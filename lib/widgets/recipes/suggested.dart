import 'package:flutter/material.dart';

import '../../models/index.dart';
import 'shared/horizontal_list/horizontal_list.dart';

class SuggestedRecipesWidget extends StatelessWidget {
  const SuggestedRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HorizontalListRecipesWidget(
      subtitle: 'Fast, fresh and foolproof',
      title: 'What to cook tonight',
      type: RecipeList.suggested,
    );
  }
}
