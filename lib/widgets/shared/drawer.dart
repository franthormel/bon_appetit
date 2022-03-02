import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../style/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: BonAppetitColors.black),
            child: SvgPicture.asset('assets/logo.svg'),
          ),
          ...ListTile.divideTiles(context: context, tiles: [
            ListTile(
              title: const Text("Recipes"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text("Cooking"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text("Culture"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text("Shopping"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text("Restaurants"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text("BA Market"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text("Videos"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text("Podcast"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text("Merch Shop"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
          ]).toList(),
        ],
      ),
    );
  }
}
