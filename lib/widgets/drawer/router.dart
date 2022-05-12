import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';

class DrawerRouterWidget extends StatelessWidget {
  final String text;
  final PageRouteInfo route;

  const DrawerRouterWidget(this.text, this.route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text.toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontWeight: FontWeight.w700, letterSpacing: 2.6),
      ),
      onTap: () {
        Provider.of<RouteProvider>(context, listen: false).push(route);
        AutoRouter.of(context).pop();
      },
    );
  }
}
