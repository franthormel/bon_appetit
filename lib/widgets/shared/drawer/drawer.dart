import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../style/colors.dart';
import 'drawer_contents.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(bottom: 20.0),
        primary: true,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: BonAppetitColors.black),
            child: SvgPicture.asset('assets/logo.svg'),
          ),
          const DrawerContentsWidget(),
        ],
      ),
    );
  }
}
