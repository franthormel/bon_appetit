import 'package:flutter/material.dart';

import '../../../services/index.dart';
import '../../auth/user_change.dart';
import 'in.dart';
import 'out.dart';

class DrawerAuthWidget extends StatelessWidget {
  const DrawerAuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (FirebasePlatformService.isSupported)
          const AuthUserChangeWidget(
            userWidget: DrawerAccountAuthInWidget(),
            nullUserWidget: DrawerAccountAuthOutWidget(),
          ),
      ],
    );
  }
}
