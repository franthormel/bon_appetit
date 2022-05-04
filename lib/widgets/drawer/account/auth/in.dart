import 'package:flutter/material.dart';

import '../entry.dart';

class DrawerAccountAuthInWidget extends StatelessWidget {
  const DrawerAccountAuthInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // TODO: Create new page for this one
        DrawerAccountEntryWidget("My Account"),
        // TODO: Implement "Sign Out"
        DrawerAccountEntryWidget("Sign Out"),
      ],
    );
  }
}
