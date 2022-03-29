import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import '../../../style/colors.dart';
import 'contents.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(bottom: 20.0),
        children: [
          GestureDetector(
            onTap: () {
              final route = Provider.of<RouteProvider>(context, listen: false);
              route.change(const HomeRoute());

              AutoRouter.of(context).pop();
            },
            child: DrawerHeader(
              decoration: const BoxDecoration(color: BonAppetitColors.black),
              child: SvgPicture.asset('assets/logo.svg'),
            ),
          ),
          const DrawerContentsWidget(),
        ],
      ),
    );
  }
}
