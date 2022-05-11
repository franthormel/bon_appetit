import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/index.dart';
import '../../../others/underlined_text_button.dart';

class AuthLoginPageEndWidget extends StatelessWidget {
  const AuthLoginPageEndWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UnderlinedTextButtonWidget(
          onPressed: () {
            Provider.of<RouteProvider>(context, listen: false).pop();
          },
          text: "Sign in with a different account",
        ),
        UnderlinedTextButtonWidget(
          onPressed: () {
            // TODO: Login end action 'Help me sign in'
          },
          text: "Help me sign in",
        ),
      ],
    );
  }
}
