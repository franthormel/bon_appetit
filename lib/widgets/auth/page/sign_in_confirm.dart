import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../router/index.dart';
import '../button/button.dart';

class AuthSignInPageConfirmWidget extends StatelessWidget {
  const AuthSignInPageConfirmWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthButtonWidget(
      onPressed: () {
        Provider.of<RouteProvider>(context, listen: false).goToHomepage();
      },
      text: "GO TO HOMEPAGE",
    );
  }
}
