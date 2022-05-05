import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';

class ScaffoldedWillPopWidget extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;

  const ScaffoldedWillPopWidget({
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Provider.of<RouteProvider>(context, listen: false).pop();
        return Future<bool>.value(true);
      },
      child: Scaffold(
        appBar: appBar,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
