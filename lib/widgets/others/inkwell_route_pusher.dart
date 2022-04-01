import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';

class InkwellRoutePusher extends StatelessWidget {
  final Widget child;
  final PageRouteInfo route;

  const InkwellRoutePusher({
    required this.child,
    required this.route,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Use Inkwell
    return GestureDetector(
      child: child,
      onTap: () {
        Provider.of<RouteProvider>(context, listen: false).push(route);
      },
    );
  }
}
