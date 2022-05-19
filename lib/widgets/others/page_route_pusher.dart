import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';

class PageRoutePusherWidget extends StatelessWidget {
  final Widget child;
  final PageRouteInfo route;
  final void Function()? callback;

  const PageRoutePusherWidget({
    required this.child,
    required this.route,
    this.callback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        if (callback != null) {
          callback!();
        }

        Provider.of<RouteProvider>(context, listen: false).push(route);
      },
    );
  }
}
