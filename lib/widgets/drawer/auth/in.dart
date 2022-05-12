import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import '../../../../services/index.dart';
import 'entry.dart';

class DrawerAccountAuthInWidget extends StatelessWidget {
  const DrawerAccountAuthInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = Provider.of<RouteProvider>(context, listen: false);

    return Column(
      children: [
        DrawerAccountEntryWidget(
          "My Account",
          onTap: () {
            router.push(const AuthAccountRoute());
          },
        ),
        DrawerAccountEntryWidget(
          "Sign Out",
          onTap: () {
            router.goToHomepage();
            FirebaseAuthService.signOut();
          },
        ),
      ],
    );
  }
}
