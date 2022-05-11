import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import '../../../others/underlined_text_button.dart';

class AuthLoginPageEndWidget extends StatelessWidget {
  final String email;

  const AuthLoginPageEndWidget(this.email, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = Provider.of<RouteProvider>(context, listen: false);

    return Column(
      children: [
        UnderlinedTextButtonWidget(
          onPressed: router.pop,
          text: "Sign in with a different account",
        ),
        UnderlinedTextButtonWidget(
          onPressed: () {
            router.push(AuthMagicLinkRoute(email: email));
          },
          text: "Help me sign in",
        ),
      ],
    );
  }
}
