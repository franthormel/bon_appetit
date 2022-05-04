import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';
import 'account_entry.dart';

class DrawerAccountWidget extends StatelessWidget {
  const DrawerAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = Provider.of<RouteProvider>(context, listen: false);

    return Column(
      children: [
        DrawerAccountEntryWidget(
          "Sign in",
          onTap: () {
            router.change(const AuthSignInRoute());
          },
        ),
        const DrawerAccountEntryWidget("Newsletter"),
      ],
    );
  }
}
