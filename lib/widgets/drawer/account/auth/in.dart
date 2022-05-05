import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import '../entry.dart';

class DrawerAccountAuthInWidget extends StatelessWidget {
  const DrawerAccountAuthInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerAccountEntryWidget(
          "My Account",
          onTap: () {
            Provider.of<RouteProvider>(context, listen: false)
                .push(const AuthRoute(children: [AuthAccountRoute()]));
          },
        ),
        DrawerAccountEntryWidget(
          "Sign Out",
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
        ),
      ],
    );
  }
}
