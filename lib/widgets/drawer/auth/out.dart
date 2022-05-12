import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import 'entry.dart';

class DrawerAccountAuthOutWidget extends StatelessWidget {
  const DrawerAccountAuthOutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerAccountEntryWidget(
      "Sign in",
      onTap: () {
        Provider.of<RouteProvider>(context, listen: false)
            .push(const AuthEmailRoute());
      },
    );
  }
}
