import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';
import '../../style/index.dart';

class DrawerBannerWidget extends StatelessWidget {
  const DrawerBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final route = Provider.of<RouteProvider>(context, listen: false);
        route.change(const HomeRoute());

        AutoRouter.of(context).pop();
      },
      child: DrawerHeader(
        decoration: const BoxDecoration(color: BonAppetitColors.black),
        child: SvgPicture.asset('assets/logo.svg'),
      ),
    );
  }
}
