import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';

class RecipeDetailsDividerWidget extends StatelessWidget {
  const RecipeDetailsDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HorizontalPaddingWidget(child: Divider());
  }
}
