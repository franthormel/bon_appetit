import 'package:flutter/material.dart';

import '../../../../style/colors.dart';

class DrawerPageRecipeButtonTextWidget extends StatelessWidget {
  const DrawerPageRecipeButtonTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "SEE RECIPE",
      style: Theme.of(context)
          .textTheme
          .caption
          ?.apply(color: BonAppetitColors.white),
    );
  }
}
