import 'package:flutter/material.dart';

import '../../../services/index.dart';
import 'auth/auth.dart';
import 'entry.dart';

class DrawerAccountWidget extends StatelessWidget {
  const DrawerAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (FirebasePlatformService.isSupported)
          const DrawerAccountAuthWidget(),
        const DrawerAccountEntryWidget("Newsletter"),
      ],
    );
  }
}
