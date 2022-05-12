import 'package:flutter/material.dart';

import '../../../auth/user_change.dart';
import 'in.dart';
import 'out.dart';

/// This widget displays the corresponding widgets in the Drawer depending on the user authentication state.
/// If the user is authenticated, display a link to their account and a sign out button
/// otherwise show the link to the email sign in page.
class DrawerAccountAuthWidget extends StatelessWidget {
  const DrawerAccountAuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthUserChangeWidget(
      userWidget: DrawerAccountAuthInWidget(),
      nullUserWidget: DrawerAccountAuthOutWidget(),
    );
  }
}
