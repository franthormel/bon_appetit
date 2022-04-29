import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'button_text.dart';

class DrawerPageRecipeButtonWidget extends StatelessWidget {
  const DrawerPageRecipeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 25.0, vertical: 6.0);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 2.0,
          left: 2.0,
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              color: BonAppetitColors.white,
              border: Border.all(color: BonAppetitColors.black),
            ),
            child: const DrawerPageRecipeButtonTextWidget(),
          ),
        ),
        Container(
          padding: padding,
          color: BonAppetitColors.black,
          child: const DrawerPageRecipeButtonTextWidget(),
        ),
      ],
    );
  }
}
