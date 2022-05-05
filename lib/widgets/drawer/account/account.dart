import 'package:flutter/material.dart';

import 'auth/auth.dart';
import 'entry.dart';

class DrawerAccountWidget extends StatelessWidget {
  const DrawerAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // TODO: Don't show this widget if platform is unsupported (ref main.dart)
        DrawerAccountAuthWidget(),
        DrawerAccountEntryWidget("Newsletter"),
      ],
    );
  }
}
