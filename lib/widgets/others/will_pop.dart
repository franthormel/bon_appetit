import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';

class WillPopWidget extends StatelessWidget {
  final Widget child;

  const WillPopWidget({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Provider.of<RouteProvider>(context, listen: false).pop();
        return Future<bool>.value(true);
      },
      child: child,
    );
  }
}
