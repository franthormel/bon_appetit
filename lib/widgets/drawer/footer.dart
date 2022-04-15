import 'package:flutter/material.dart';

import '../others/svg_icon_button.dart';

class DrawerFooterWidget extends StatelessWidget {
  const DrawerFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        SvgIconButtonWidget("assets/facebook.svg"),
        SvgIconButtonWidget("assets/twitter.svg"),
        SvgIconButtonWidget("assets/pinterest.svg"),
        SvgIconButtonWidget("assets/instagram.svg"),
        SvgIconButtonWidget("assets/youtube.svg"),
      ],
    );
  }
}
