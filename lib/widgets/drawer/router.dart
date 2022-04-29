import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../router/index.dart';

class DrawerRouterWidget extends StatelessWidget {
  final DrawerRoute route;

  const DrawerRouterWidget(this.route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        route.text.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: 2.6,
            ),
      ),
      onTap: () {
        final router = Provider.of<RouteProvider>(context, listen: false);
        router.change(route.pageRouteInfo);

        AutoRouter.of(context).pop();
      },
    );
  }
}
