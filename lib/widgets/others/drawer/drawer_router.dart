import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DrawerRouterWidget extends StatelessWidget {
  final String text;

  const DrawerRouterWidget(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: 2.6,
            ),
      ),
      onTap: () {
        AutoRouter.of(context).pop();
      },
    );
  }
}
